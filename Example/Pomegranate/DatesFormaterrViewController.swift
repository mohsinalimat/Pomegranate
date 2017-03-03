//
//  DatesViewController.swift
//  Pomegranate
//
//  Created by Jorge Elizondo on 2/22/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import Pomegranate

class DateFormatterrViewController: UIViewController {
    
    let dates = [Date(),
                 Date(timeIntervalSinceNow: 86400 * -1),
                 Date(dateInString: "15/03/1995",dateFormat: "dd/MM/yyyy")!,
                 Date(dateInString: "15/03/2016",dateFormat: "dd/MM/yyyy")!,
                 Date(dateInString: "25/02/2017",dateFormat: "dd/MM/yyyy")!
                 ]
   
    let formats = [Date.DateFormat.normal,.short,.long,.weekDay,.custom("dd-MM-yyyy")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DateFormatterrViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DateTableViewCell
        cell.DateLabel.text = "Date: \(dates[indexPath.row])"
        cell.DateWithFormatLabel.text = "Date with format: \(dates[indexPath.row].toTimeLanguage())"
        cell.DateWithFormatLabel2.text = "Date with format: \(dates[indexPath.row].convertTo(format: formats[indexPath.row]))"
        return cell
    }
}

