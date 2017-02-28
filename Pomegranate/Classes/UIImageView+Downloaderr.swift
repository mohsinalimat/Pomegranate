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
    public func downloadImageWithPlaceholder(url: NSURL, placeholder: UIImage){
    
        let response = ImageCache.sharedImageCache.checkCacheForImage(url: url)
        if (response != nil ) {
            self.image = response
            
        }
        else {
            self.image = placeholder
            let downloadQueue = DispatchQueue(label: "download")
            
            downloadQueue.async {
            
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
        }
    }
}
