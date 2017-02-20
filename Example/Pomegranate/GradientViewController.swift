//
//  GradientViewController.swift
//  Pomegranate
//
//  Created by Tony Toussaint on 2/20/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class GradientViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .leftToRight, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func topButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .topToBottom, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .rightToLeft, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func bottomButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .bottomToTop, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func diagonal1ButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .diagonalLeftToRight, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func diagonal2ButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .diagonalRightToLeft, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
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
