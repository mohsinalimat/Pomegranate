//
//  DownloaderrViewController.swift
//  Pomegranate
//
//  Created by Tony Toussaint on 2/21/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class DownloaderrViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func downloadImagePressed(_ sender: UIButton) {
        imageView.downloadImageWithPlaceholder(url: NSURL(string: "https://upload.wikimedia.org/wikipedia/en/3/39/Wakerlink.jpgg")!, placeholder: UIImage())
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
