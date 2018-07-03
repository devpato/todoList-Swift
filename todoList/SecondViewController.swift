//
//  SecondViewController.swift
//  todoList
//
//  Created by Patricio Vargas on 7/2/18.
//  Copyright © 2018 Patricio Vargas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var itemField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItem(_ sender: Any) {
        let itemsObj = UserDefaults.standard.object(forKey: "items")
        
        var items: NSMutableArray = []
        
        if let itemsTemp = itemsObj as? NSMutableArray {
            items = itemsTemp
            items.addObjects(from: [itemField.text!])
        } else {
             items = [itemField.text!]
        }
        UserDefaults.standard.set(items,forKey: "items")
        itemField.text = ""
        
        print(UserDefaults.standard.object(forKey:"itmes") ?? [])
    }
   
}

