//
//  ImageCache.swift
//  Pods
//
//  Created by Tony Toussaint on 2/21/17.
//
//

import Foundation
import UIKit

public class ImageCache{
    static let sharedImageCache = ImageCache()
    let cache = NSCache<NSURL, AnyObject>()
    
    func checkCacheForImage(url: NSURL)->UIImage?{
        if let cachedVersion = cache.object(forKey: url) as? UIImage {
            return cachedVersion
        }
        else {
            return nil
        }
    }
    func addImageToCache(url: NSURL, imageToSave: UIImage){
        
        cache.setObject(imageToSave, forKey: url)
    }
}
