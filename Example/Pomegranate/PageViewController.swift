//
//  PageViewController.swift
//  Pomegranate
//
//  Created by Jorge Elizondo on 3/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class PageViewController: UIViewController, UIPageViewControllerDataSource {
    
    var pageViewController: UIPageViewController!
    let contentViewController = ContentViewController()
    let titles = ["Title1","Title2","Title3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        pageViewController.dataSource = self
        
        let startingViewController: ContentViewController = viewControllerAt(index: 0)!
        let viewControllers = [startingViewController]
        pageViewController.setViewControllers(viewControllers, direction: .forward, animated: false, completion: nil)
        pageViewController.view.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height);
        
        addChildViewController(pageViewController)
        view.addSubview(pageViewController!.view)
        pageViewController.didMove(toParentViewController: self)
        
    }
    
    func viewControllerAt(index: Int) -> ContentViewController? {
        
        if (titles.count == 0) || (index >= titles.count) ||  (index < 0) {
            return nil
        }
        
        let vc:ContentViewController = ContentViewController()
        vc.pageIndex = index
        vc.pageTitleText = titles[index]
        
        return vc
    }
    
    // MARK: - DataSource
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! ContentViewController
        var index:Int = vc.pageIndex
        
        if index == 0 || index == NSNotFound {
            return nil
        }
        
        index -= 1
        
        return viewControllerAt(index: index)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! ContentViewController
        var index:Int = vc.pageIndex
        
        if  index == NSNotFound {
            return nil
        }
        
        index += 1
        
        if index == titles.count {
            return nil
        }
        
        return viewControllerAt(index: index)
    }
    
}

