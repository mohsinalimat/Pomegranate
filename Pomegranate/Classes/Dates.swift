//
//  Dates.swift
//  Pods
//
//  Created by Jorge Elizondo on 2/22/17.
//
//

import Foundation

public class Dates {
    
    public init () {

    }

    public func stringToDate(_ string:String,dateFormat:String) -> Date? {
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        return dateFormatter.date( from: string )
    }
    
    public func timeAgo(_ date:Date) -> String {
        let timeIntervalInDays = Int(date.timeIntervalSinceNow/(60*60*24) * -1)
        let timeIntervalInYears = Int(date.timeIntervalSinceNow/(60*60*24*365) * -1)
        
        if timeIntervalInYears >= 1 {
            if timeIntervalInYears == 1 {
                return "1 year and \(timeIntervalInDays-(365*timeIntervalInYears)) days ago"
            }
            return "\(timeIntervalInYears) years and \(timeIntervalInDays-(365*timeIntervalInYears)) days ago"
        }
        else if timeIntervalInDays >= 1 {
            if timeIntervalInDays == 1 {
                return "1 day ago"
            }
            return "\(timeIntervalInDays) days ago"
        }
        else {
            return "A moment ago"
        }
    }
}
