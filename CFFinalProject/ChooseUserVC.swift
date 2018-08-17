//
//  ChooseUserVC.swift
//  CFFinalProject
//
//  Created by Jonathan Compton on 8/16/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit

class ChooseUserVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = ["Jon", "Jeff", "Robert", "Suze"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.layer.borderColor = UIColor.white.cgColor
        tableView.layer.borderWidth = 2
        tableView.backgroundColor = UIColor.clear
        tableView.rowHeight = 50
    }
}

extension ChooseUserVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        cell.nameLabel.text = array[indexPath.row]
        return cell
    }
}

extension ChooseUserVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

