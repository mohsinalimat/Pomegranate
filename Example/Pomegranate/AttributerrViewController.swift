//
//  AttributerrViewController.swift
//  Pomegranate
//
//  Created by Tony Toussaint on 2/22/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Pomegranate

class AttributerrViewController: UIViewController {
    
    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.attributedText = Attributerr.sharedAttributerr.createString(string: "Hola", backgroundColor: .red, font: .systemFont(ofSize: 20), color: .blue, underLineStyle: 0)
        secondLabel.attributedText = Attributerr.sharedAttributerr.createString(string: "Part 2", backgroundColor: .cyan, font: .systemFont(ofSize: 24), color: .gray, underLineStyle: 1)

        // Do any additional setup after loading the view.
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
