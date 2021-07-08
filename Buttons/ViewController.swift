//
//  ViewController.swift
//  Buttons
//
//  Created by apple on 06.07.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

    let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
            return self.numbers.count
        
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell: UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
            cell.textLabel?.text = self.numbers[indexPath.row]
            return cell
        }
        
        func buttonAction(_ sender: UIButton) {
        print("Кнопка нажата")
        }
