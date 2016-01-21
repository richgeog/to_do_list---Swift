//
//  ViewController.swift
//  to_do_list
//
//  Created by Richard Geoghegan on 21/01/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var toDoTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
 
    
    var toDoArray : [String] = ["Eat", "sleep", "code", "repeat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        let toDoText = toDoTextField.text!
        addStringToArray(toDoText)
        print(toDoArray)
    }
    
    // MARK: TableView DataSource and Delegate
    
    func addStringToArray(toDoString: String) {
        toDoArray.append(toDoString)
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ToDoTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ToDoTableViewCell
        cell.toDoCellLabel.text = toDoArray[indexPath.row]
        return cell
    }

}