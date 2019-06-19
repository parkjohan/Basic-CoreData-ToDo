//
//  AddTaskViewController.swift
//  CoreData ToDo
//
//  Created by Johan Park on 6/19/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var addTaskTextField: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        
        // Get persistentContainer, which holds the CoreData stack from the AppDelegate
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        // Link Task and Context
        let task = Task(context: context)
        task.name = addTaskTextField.text!
        
        // Save the data to CoreData
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        let _ = navigationController?.popViewController(animated: true)
    }
}
