//
//  ViewController.swift
//  ExamProject
//
//  Created by Nail on 23.01.2021.
//  Copyright © 2021 Nail. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var dataSource: [Comment] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let comment1 = Comment(comment: "hello")
        let comment2 = Comment(comment: "hello1")
        let comment3 = Comment(comment: "hello2")
        let comment4 = Comment(comment: "hello3")
        let comment5 = Comment(comment: "hello4")
        let comment6 = Comment(comment: "hello5")
        let comment7 = Comment(comment: "hello6")
        let comment8 = Comment(comment: "hello7")
        let comment9 = Comment(comment: "hello8")
        let comment10 = Comment(comment: "hello9")
        let comment11 = Comment(comment: "hello10")
        
        dataSource.append(comment1)
        dataSource.append(comment2)
        dataSource.append(comment3)
        dataSource.append(comment4)
        dataSource.append(comment5)
        dataSource.append(comment6)
        dataSource.append(comment7)
        dataSource.append(comment8)
        dataSource.append(comment9)
        dataSource.append(comment10)
        dataSource.append(comment11)

        
        tableView.reloadData()
        
    }

    let date = NSDate()
    
    @IBAction func updateBtn(_ sender: Any) {
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell") as! MainTableViewCell
        
        let user = dataSource[indexPath.row]
        
        switch indexPath.row {
        case 1: 
            cell.updateCell(padding: 30)
        case 2:
            cell.updateCell(padding: 50)
        case 3:
             cell.updateCell(padding: 50)
        case 5:
             cell.updateCell(padding: 30)
        case 7:
            cell.updateCell(padding: 30)
        case 8:
            cell.updateCell(padding: 30)
        default:
            print("fff")
        }
        cell.parentCommentLabel.text = user.comment
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            return CGFloat(80)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
  }


