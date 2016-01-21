//
//  ViewController.swift
//  to_do_list
//
//  Created by Richard Geoghegan on 21/01/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toDoTextField: UITextField!
    
    var toDoArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    func addStringToArray(toDoString: String) {
        toDoArray.append(toDoString)
    }


}