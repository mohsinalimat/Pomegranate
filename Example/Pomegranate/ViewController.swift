//
//  ViewController.swift
//  Pomegranate
//
//  Created by tonyyasi on 02/15/2017.
//  Copyright (c) 2017 tonyyasi. All rights reserved.
//

import UIKit
import Pomegranate

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let titles : [String] = ["Gradienter","Downloaderr","DateFormatterr","Attributerr","Colorerr","PageView"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if (titles[indexPath.row] == "PageView" ) {
            let vc = PageViewController()
            vc.titles = ["Title1","Title2","Title3"]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: titles[indexPath.row])
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
}

