//
//  Dates.swift
//  Pods
//
//  Created by Jorge Elizondo on 2/22/17.
//
//

import Foundation

public extension Date {
    
    //Time in seconds
    var minutesInSeconds:Double { return 60 }
    var hourInSeconds:Double { return 3600 }
    var dayInSeconds:Double { return 86400 }
    var yearInSeconds:Double { return 31536000 }
    
    //Time intervals
    func timeIntervalInDaysSinceNow(date:Date) -> Double {
        return date.timeIntervalSinceNow / dayInSeconds
    }
    
    func timeIntervalInYearsSinceNow(date:Date) -> Double {
        return date.timeIntervalSinceNow / yearInSeconds
    }
    
    //Converting strings to dates
    public func stringToDate(string:String,dateFormat:String) -> Date? {
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        return dateFormatter.date( from: string )
    }
    
    //Converting dates to strings
    func timeAgo(date:Date) -> String {
        let timeIntervalInDays = Int(date.timeIntervalInDaysSinceNow(date: date) * -1)
        let timeIntervalInYears = Int(date.timeIntervalInYearsSinceNow(date: date) * -1)
        
        if timeIntervalInYears == 1 {
            return "1 year and \(timeIntervalInDays-(365*timeIntervalInYears)) days ago"
        }

        if timeIntervalInYears > 1 {
            return "\(timeIntervalInYears) years and \(timeIntervalInDays-(365*timeIntervalInYears)) days ago"
        }
        
        if timeIntervalInDays == 1 {
            return "1 day ago"
        }
        
        if timeIntervalInDays > 1 {
            
            return "\(timeIntervalInDays) days ago"
        }
        
        return "A moment ago"
        
    }
}
