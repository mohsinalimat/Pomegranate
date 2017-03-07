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
    
    @IBOutlet weak var view1: UIView!

    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var view8: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.backgroundColor = UIColor.Colorerr.Blue.light
        view2.backgroundColor = UIColor.Colorerr.Blue.dark
        view3.backgroundColor = UIColor.Colorerr.Pink.light
        view4.backgroundColor = UIColor.Colorerr.Pink.dark
        view5.backgroundColor = UIColor.Colorerr.Orange.regular
        view6.backgroundColor = UIColor.Colorerr.Orange.dark
        view7.backgroundColor = UIColor.Colorerr.SocialMedia.twitter
        view8.backgroundColor = UIColor.Colorerr.SocialMedia.facebook
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
