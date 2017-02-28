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
    
    let dates = [Date(),Date(timeIntervalSinceNow: 86400 * -1),Date(dateInString: "15/03/1995", dateFormat: "dd/MM/yyyy")!]
    
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
        cell.DateWithFormatLabel.text = "Date with format: \(dates[indexPath.row].toTimeAgo())"
        return cell
    }
}

