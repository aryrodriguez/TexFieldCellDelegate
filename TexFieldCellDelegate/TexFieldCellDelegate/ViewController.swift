//
//  ViewController.swift
//  TextFieldCell
//
//  Created by Ary on 20/07/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    let labels = ["Name", "Last Name"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "textFieldCell",for: indexPath) as! TextFieldCell
        cell.textField.delegate = self
        cell.textLabel?.text = labels[indexPath.row]
        
        return cell
    }
    
    // MARK: - TextField delegate
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print(textField.text!)
        return true
    }
    
}
