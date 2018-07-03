//
//  SecondViewController.swift
//  todoList
//
//  Created by Patricio Vargas on 7/2/18.
//  Copyright © 2018 Patricio Vargas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var task: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func addTaskNew(_ sender: UIButton) {
        
        let tasksListObj = UserDefaults.standard.object(forKey: "newTasksList")
       
         var tasksList:[String] = []
        
        //if already added anything... always following check should work!
        if let tempTasks = tasksListObj as? String {
            tasksList = [tempTasks]
            tasksList.append(task.text!)
        }
        else
        {
            //this will run only first time
            tasksList = [task.text!]
        }
        
        
        
        //This sets value in app cookies.
        UserDefaults.standard.set(tasksList, forKey: "newTasksList")
        print(tasksListObj ?? [])
        task.text = ""
        
     
    }
}

