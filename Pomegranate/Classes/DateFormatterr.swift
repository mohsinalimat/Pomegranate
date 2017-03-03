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
      
        switch format {
        case .normal:
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM d, yyyy"
            var dateString = dateFormatter.string(from: self)
            return dateString
            
        case .short:
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy"
            var dateString = dateFormatter.string(from: self)
            return dateString
            
        case .long:
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MMMM/yyyy, h:mm a"
            var dateString = dateFormatter.string(from: self)
            return dateString
            
        case .weekDay: 
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE"
            var dateString = dateFormatter.string(from: self)
            return dateString
            
        default: break
       
        }
        
        var dateString = ""
        if case let .custom(text) = format {
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = text
            dateString = dateFormatter.string(from: self)
        }
        
        return dateString
    }
    
    enum DateFormat {
        case normal
        case short
        case long
        case weekDay
        case custom(String)
    }
    
    enum TimeRelativeToDate {
        case rightNow
        case oneDayAgo
        case tomorrow
        case oneYearAgo
        case yearsAgo
        case daysAgo
        case minutesAgo
        case oneMinuteAgo
    }
}
