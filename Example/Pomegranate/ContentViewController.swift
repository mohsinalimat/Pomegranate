//
//  ContentViewController.swift
//  Pomegranate
//
//  Created by Jorge Elizondo on 3/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var pageTitle: UILabel!
    public var pageIndex = 0
    public var pageTitleText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if pageTitleText != nil {
            pageTitle.text = pageTitleText!
        }
    }
    
}
