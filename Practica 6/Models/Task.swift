//
//  Task.swift
//  Practica 6
//
//  Created by Joel Garcia on 7/7/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import Foundation

class TaskModel {
    var id: Int = 0
    var task: String
    var dueDate: Date
    
    init (task: String, dueDate: Date){
        self.task = task
        self.dueDate = dueDate
    }
}
