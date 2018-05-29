//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by Keegan Leary on 5/28/18.
//  Copyright © 2018 Keegan Leary. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        var index = 0
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name {
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
        
    }
}
