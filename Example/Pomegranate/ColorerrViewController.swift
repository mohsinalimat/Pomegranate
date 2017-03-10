//
//  ColorerrViewController.swift
//  Pomegranate
//
//  Created by Tony Toussaint on 3/1/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Pomegranate

class ColorerrViewController: UIViewController {
    
    let colors = [UIColor.Colorerr.Blue.light, UIColor.Colorerr.Blue.dark,
                  UIColor.Colorerr.Pink.light, UIColor.Colorerr.Orange.light,
                  UIColor.Colorerr.Orange.dark, UIColor.Colorerr.SocialMedia.twitter,
                  UIColor.Colorerr.SocialMedia.facebook]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ColorerrViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ColorerrCollectionViewCell
        cell.backgroundColor = colors[indexPath.row]
        cell.colorLabel.text =  String(describing: colors[indexPath.row])
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
}

extension ColorerrViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return CGFloat(20)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return CGFloat(20)
    }
   
    
}


