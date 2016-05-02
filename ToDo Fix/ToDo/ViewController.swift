//
//  ViewController.swift
//  ToDo
//
//  Created by Gabin Kee on 5/2/16.
//  Copyright © 2016 Gabin Kee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate /*this view will be datasource and delegate*/ {
    
    //Mark: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //Mark: TableView Datasource methods = tableview knows how many todos, how many cell creations needed for the todos
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToDoManager.sharedInstance.count
        //-> means return
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        
        let todo = ToDoManager.sharedInstance.todoAtIndex(indexPath.row)
        cell.textLabel?.text = todo.name
        
        return cell
    }
    
    
        
    
    
    
    //Mark: View lifecycle methods

    //viewWillAppear is everytime, even when return
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    //viewDidLoad is the very first
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        let count = ToDoManager.sharedInstance.count
        print("Todo Count: \(count)")
        
        let t = ToDoManager.sharedInstance.todoAtIndex(0)
        print("First Todo: \(t.name)")
        
        //appear on bottom screen like playground
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

