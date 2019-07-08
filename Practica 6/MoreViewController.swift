//
//  MoreViewController.swift
//  Practica 6
//
//  Created by Joel Garcia on 7/7/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import UIKit

var task = [TaskModel]()
class MoreViewController: UIViewController {
    
    
    @IBOutlet weak var txtTask: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    
    @IBAction func addTask(_ sender: Any) {
        
        
        if txtTask.text!.isEmpty {
            let alert = UIAlertController(title: "Cuidado", message: "La tarea está vacía", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
        else {
            task.append(TaskModel(task: txtTask.text!, dueDate: datePicker.date))
            let alert = UIAlertController(title: "Nueva Tarea", message: "La tarea ha sido guardada", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            txtTask.text = ""
            print(task.count)
            
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
