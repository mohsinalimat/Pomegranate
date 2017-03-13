//
//  GradientViewController.swift
//  Pomegranate
//
//  Created by Tony Toussaint on 2/20/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Pomegranate

class GradientViewController: UIViewController {
    @IBOutlet weak var multipleColorSwitch: UISwitch!

    let colors = [UIColor.Colorerr.Blue.regular.cgColor, UIColor.Colorerr.Green.regular.cgColor, UIColor.Colorerr.Yellow.regular.cgColor]
    
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
            if(multipleColorSwitch.isOn){
                view.addGradientWithMultipleColors(colors: colors, type: .leftToRight, animated: true)
            }
            else{
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .leftToRight, animated: true)
            }
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func topButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            if(multipleColorSwitch.isOn){
                view.addGradientWithMultipleColors(colors: colors, type: .topToBottom, animated: true)
            }
            else{
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .topToBottom, animated: true)
            }
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            if(multipleColorSwitch.isOn){
                view.addGradientWithMultipleColors(colors: colors, type: .rightToLeft, animated: true)
            }
            else{
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .rightToLeft, animated: true)
            }
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func bottomButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            if(multipleColorSwitch.isOn){
             view.addGradientWithMultipleColors(colors: colors, type: .bottomToTop, animated: true)
            }
            else{
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .bottomToTop, animated: true)
            }
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func diagonal1ButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            if(multipleColorSwitch.isOn){
                view.addGradientWithMultipleColors(colors: colors, type: .diagonalLeftToRight, animated: true)
            }
            else{
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .diagonalLeftToRight, animated: true)
            }
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func diagonal2ButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            if(multipleColorSwitch.isOn){
                view.addGradientWithMultipleColors(colors: colors, type: .diagonalRightToLeft, animated: true)
            }
            else{
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .diagonalRightToLeft, animated: true)
            }
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
