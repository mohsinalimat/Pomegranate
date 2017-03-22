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
    
    func toTimeLanguage(timeLanguages: [TimeRelativeToDate:String]? = nil) -> String {
        let days = Int(self.timeIntervalInDaysSinceNow() * -1)
        let years = Int(self.timeIntervalInYearsSinceNow() * -1)
        let seconds = self.timeIntervalSinceNow * -1
        let minutes = Int(self.timeIntervalSinceNow / 60) * -1
        
        if seconds < 60 {
            return timeLanguages?[.rightNow] ?? "A moment ago"
        }
        else if minutes == 1 {
             return timeLanguages?[.oneMinuteAgo] ?? "One minute ago"
        }
        else if minutes < 60 {
             return timeLanguages?[.minutesAgo] ?? "\(minutes) minutes ago"
        }
        else if days == 1 {
             return timeLanguages?[.oneDayAgo] ?? "One day ago"
        }
        else if days < 365 {
             return timeLanguages?[.daysAgo] ?? "\(days) days ago"
        }
        else if years == 1 {
            return timeLanguages?[.oneYearAgo] ?? "One year ago"
        }
        else {
            return timeLanguages?[.yearsAgo] ?? "\(years) years and \(days-(years*365)) days ago"
        }
    }
    
    func convertTo(format:DateFormat) -> String {
        var stringFormat = ""
      
        switch format {
        case .short:
            stringFormat = "dd/MM/yyyy"
        
        case .medium:
            stringFormat = "MMM dd, yyyy"
            
        case .long:
            stringFormat = "MMMM dd, yyyy"
            
        case .full:
            stringFormat = "EEEE, MMMM dd, yyyy"
            
        case .weekDay: 
            stringFormat = "EEEE"
            
        case .custom:
            if case let .custom(text) = format {
                stringFormat = text
            }
        }
        
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = stringFormat
        var dateString = dateFormatter.string(from: self)
        
        return dateString
    }
    
    //MARK: - Enums
    
    /**
     Date formats
     
     - full: EEEE, MMMM dd, yyyy
     - short: dd/MM/yyyy
     - medium: MMM dd, yyyy
     - long: EEEE, MMMM dd, yyyy
     - weekDay: EEEE
     - custom
     */
    enum DateFormat {
        case full
        case short
        case medium
        case long
        case weekDay
        case custom(String)
    }
    
    enum TimeRelativeToDate {
        case rightNow
        case oneDayAgo
        case oneYearAgo
        case yearsAgo
        case daysAgo
        case minutesAgo
        case oneMinuteAgo
    }
}
