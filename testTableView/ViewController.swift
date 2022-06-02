//
//  ViewController.swift
//  testTableView
//
//  Created by chenzhizs on 2022/06/02.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let tableView = UITableView()
    
    var data = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 0...100{
            data.append("data.append \(x)")
        }
        
        view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //10
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        //cell.textLabel?.text = "cell \(String(indexPath.row+1))"
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}

