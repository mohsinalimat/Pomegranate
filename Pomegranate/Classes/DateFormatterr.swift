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
    func timeIntervalInDaysSinceNow() -> Double {
        return self.timeIntervalSinceNow / dayInSeconds
    }
    
    func timeIntervalInYearsSinceNow() -> Double {
        return self.timeIntervalSinceNow / yearInSeconds
    }
    
    //Creating dates
    init?(dateInString:String, dateFormat:String) {
        
        guard !dateInString.isEmpty else  {
            return nil
        }
        
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        guard let date = dateFormatter.date( from: dateInString ) else {
            return nil
        }
        
        self.init(timeInterval: 0, since: date)
    }
   
    
    //Converting dates to strings
    func timeAgo(date:Date) -> String {
        let timeIntervalInDays = Int(date.timeIntervalInDaysSinceNow() * -1)
        let timeIntervalInYears = Int(date.timeIntervalInYearsSinceNow() * -1)
        
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
