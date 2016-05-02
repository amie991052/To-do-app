//
//  ToDoManager.swift
//  ToDo
//
//  Created by Gabin Kee on 5/2/16.
//  Copyright © 2016 Gabin Kee. All rights reserved.
//

import UIKit

class ToDoManager {
     //singleton: single instance, todomanager itself = property
     //todomanager: manage everything related to todo (add, delete, count, etc)
    static let sharedInstance = ToDoManager()
    
    //make an arry of todos
    var todos = [Todo /*name of where we will store*/ ] ()
    
    var count: Int {
        get {
            return todos.count
        }
    }

    
    //index turn into todos
    func todoAtIndex(index: Int) -> Todo {
        return todos[index]
    }
    
    
    //add a new todo to the list
    func addNewTodoWithName(name: String){
        let todo = Todo(name: name)
        todos.append(todo)
    }
    
    
    
    //Mark: initialize = init
    /*only saved inside the init bracket, not outside*/
    private init() {
        todos.append(Todo(name: "Math Homework"))
        todos.append(Todo(name: "Breakfast"))
    }
    
}