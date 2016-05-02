//
//  Todo.swift
//  ToDo
//
//  Created by Gabin Kee on 5/2/16.
//  Copyright © 2016 Gabin Kee. All rights reserved.
//

import UIKit

class Todo {
    var name: String
    //added items = not completed
    var completed = false
    
    //gets value inside
    init(name: String) {
        self.name = name//initialize, names saved as string
    }

}
