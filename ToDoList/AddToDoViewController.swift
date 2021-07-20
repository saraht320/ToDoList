//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Sarah Thomas on 7/19/21.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()


    @IBOutlet weak var titleTextField: UITextField!
    
    @IBAction func addTapped(_ sender: Any) {
        
    // let toDo = ToDo()
        
    // if let titleText = titleTextField.text {
       
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
            }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
        
        
      /*      toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        
        
        
        
        // update toDos array with the new object!!
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData() // display information
        navigationController?.popViewController(animated: true) */
    }
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
   
    
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? AddToDoViewController {
            
            addVC.previousVC = self;
            
        }
    } */

}
