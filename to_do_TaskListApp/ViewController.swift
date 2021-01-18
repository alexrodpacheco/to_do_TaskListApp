//
//  ViewController.swift
//  to_do_TaskListApp
//
//  Created by Alex Rodrigues Pacheco on 17/01/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tasks: [Task] = []
    
    override func viewDidLoad() {
        
        tasks.append(Task(name: "Test"))
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        
        if tasks[indexPath.row].check {
            cell.checkedBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkBoxFILLED"), for: UIControl.State.normal)
        } else {
            cell.checkedBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "checkBoxOUTLINE"), for: UIControl.State.normal)
        }
        
        
        return cell
    }
    
    class Task {
        var name: String = ""
        var check: Bool = false
        
        convenience init(name: String) {
            self.init()
            self.name = name
        }
    }

}

