//
//  UIViewExtension.swift
//  Gradienter
//
//  Created by Tony Toussaint on 8/26/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//
import UIKit

public extension UIView {
    
    enum GradientType{
        
        case leftToRight
        case rightToLeft
        case topToBottom
        case bottomToTop
        case diagonalLeftToRight
        case diagonalRightToLeft
        
        var points: (startX : Double, startY: Double, endX: Double, endY: Double) {
            switch self{
            case .leftToRight:
                return(0.0,0.5,1.0,0.5)
            case .bottomToTop:
                return(0.5,1.0,0.5,0.0)
            case .diagonalLeftToRight:
                return(0.0,0.0,1.0,1.0)
            case .diagonalRightToLeft:
                return(1.0,1.0,0.0,0.0)
            case .rightToLeft:
                return(1.0,0.5,0.0,0.5)
            case .topToBottom:
                return(0.5,0.0,0.5,1.0)
            }
        }
    }
    
    public func addGradient(beginingColor: UIColor, endingColor: UIColor, type: GradientType, animated: Bool){
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginingColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: type.points.startX, y: type.points.startY)
        gradient.endPoint = CGPoint(x: type.points.endX, y: type.points.endY)
        gradient.zPosition = -1
        if(animated){
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
        }
        else {
            self.layer.addSublayer(gradient)
        }
    }
    
    func addGradientWithMultipleColors(colors: [CGColor], type: GradientType, animated: Bool){
        // Maybe add the posibility to add a gradient of more then one color
    }
    
    public func deleteGradient(animated: Bool){
        
        if(animated){
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {for layers in self.layer.sublayers! {
                if(layers is CAGradientLayer){
                    self.layer.sublayers?.remove(at: (self.layer.sublayers?.index(of: layers))!)
                }
                }
            }, completion: nil)
        }
        else{
            for layers in self.layer.sublayers! {
                if(layers is CAGradientLayer){
                    self.layer.sublayers?.remove(at: (self.layer.sublayers?.index(of: layers))!)
                }
            }
        }
    }
}
