//
//  AddTodoViewController.swift
//  ToDo
//
//  Created by Gabin Kee on 5/2/16.
//  Copyright © 2016 Gabin Kee. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController {
    
    
    //Mark: IBOutlet
    @IBOutlet weak var nameText: UITextField!
    
    
    
    //Mark: IBActions
    @IBAction func saveButtonTapped(sender: AnyObject) {
        ToDoManager.sharedInstance.addNewTodoWithName(nameText.text!)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    /*@IBAction func cancelButtonTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }*/
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
