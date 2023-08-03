//
//  DataController.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    static let instance = DataController()
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "TodoList")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error loading core data. \(error)" )
            } else {
                print("Successfully loaded core data.")
            }
        }
        context = container.viewContext
    }
    
    func save() {
        do {
            try context.save()
        } catch let error {
            print("Error saving. \(error.localizedDescription)")
        }
    }
}
