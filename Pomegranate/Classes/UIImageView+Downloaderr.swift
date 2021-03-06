//
//  UIImageView+Downloaderr.swift
//  Pods
//
//  Created by Tony Toussaint on 2/21/17.
//
//

import Foundation
import UIKit

public extension UIImageView{
    /// Function to download an image and put a placeholder while it downloads
    public func downloadImageWith(url: NSURL, placeholder: UIImage){
    
        let response = ImageCache.sharedImageCache.checkCacheForImage(url: url)
        if (response != nil ) {
            self.image = response
            
        }
        else {
            self.image = placeholder
            let activityIndicator = UIActivityIndicatorView()
            addActivityIndicator(activityIndicator: activityIndicator)
            DispatchQueue.main.async {
            

                self.setDataWith(url: url)
                activityIndicator.stopAnimating()
            }
        }
    }
    /// Download an imge from a URL, no placeholder
    public func downloadImageFrom(url: NSURL){
        let response = ImageCache.sharedImageCache.checkCacheForImage(url: url)
        if (response != nil ) {
            self.image = response
            
        }
        else {
            let activityIndicator = UIActivityIndicatorView()
            addActivityIndicator(activityIndicator: activityIndicator)
            DispatchQueue.main.async {
                
                self.setDataWith(url: url)
                activityIndicator.stopAnimating()
            }
        }
    }
    
    /// Download image grom a url and set it to the UIImageView
    private func setDataWith(url: NSURL){
         let data = NSData(contentsOf: url as URL)
        var imageToSet = UIImage()
        
        if(data != nil) {
            imageToSet = UIImage(data: data! as Data)!
        }
        
        DispatchQueue.main.async(execute: {
            self.image = imageToSet
            ImageCache.sharedImageCache.addImageToCache(url: url, imageToSave: imageToSet)
        })
    }
    
    /// Function to add an activity indicator to the UIImageViewg
    private func addActivityIndicator(activityIndicator: UIActivityIndicatorView){
        activityIndicator.activityIndicatorViewStyle = .white
        activityIndicator.startAnimating()
        activityIndicator.center = self.center
        self.addSubview(activityIndicator)
    }
}
