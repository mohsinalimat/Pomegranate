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
    private var minutesInSeconds:Double { return 60 }
    private var hourInSeconds:Double { return 3600 }
    private var dayInSeconds:Double { return 86400 }
    private var yearInSeconds:Double { return 31536000 }
    
    //MARK: - Time intervals
    
    func timeIntervalInDaysSinceNow() -> Double {
        return self.timeIntervalSinceNow / dayInSeconds
    }
    
    func timeIntervalInYearsSinceNow() -> Double {
        return self.timeIntervalSinceNow / yearInSeconds
    }
    
    //MARK: - Creating dates
    
    init?(dateInString:String, dateFormat:String) {
        
        guard !dateInString.isEmpty else {
            return nil
        }
        
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        guard let date = dateFormatter.date( from: dateInString ) else {
            return nil
        }
        
        self.init(timeInterval: 0, since: date)
    }
   
    //MARK: - Dates to strings
    
    func toTimeAgo() -> String {
        let timeIntervalInDays = Int(self.timeIntervalInDaysSinceNow() * -1)
        let timeIntervalInYears = Int(self.timeIntervalInYearsSinceNow() * -1)
        
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
