//
//  AddTaskController.swift
//  to_do_TaskListApp
//
//  Created by Alex Rodrigues Pacheco on 17/01/21.
//



import UIKit

protocol AddTask {
    func AddTask(name: String)
}

class AddTaskController: UIViewController {
    
    @IBAction func addButtonPressed(_ sender: Any) {
        if taskNameOulet.text != ""  {
            delegate?.AddTask(name: taskNameOulet.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBOutlet weak var taskNameOulet: UITextField!
        
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}

