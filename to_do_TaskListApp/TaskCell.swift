//
//  TaskCell.swift
//  to_do_TaskListApp
//
//  Created by Alex Rodrigues Pacheco on 17/01/21.
//

import UIKit

protocol ChangeButton {
    func changebutton(checked: Bool, index: Int)
}

class TaskCell: UITableViewCell {
    
    @IBAction func taskButtonPressed(_ sender: Any) {
        if tasks![indexP!].check {
            delegate?.changebutton(checked: false, index: indexP!)
        } else {
            delegate?.changebutton(checked: true, index: indexP!)
        }
    }
    
    @IBOutlet weak var checkedBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!

    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?
}



