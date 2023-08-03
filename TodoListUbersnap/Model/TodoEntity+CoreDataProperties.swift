//
//  TodoEntity+CoreDataProperties.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//
//

import Foundation
import CoreData


extension TodoEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodoEntity> {
        return NSFetchRequest<TodoEntity>(entityName: "TodoEntity")
    }

    @NSManaged public var title: String?
    @NSManaged public var descriptions: String?
    @NSManaged public var dueDate: Date?
    @NSManaged public var id: UUID?
    
    var wrappedID: UUID {
        id ?? UUID()
    }
    
    var wrappedTitle: String {
        title ?? "Title not available"
    }
    
    var wrappedDescriptions: String {
        descriptions ?? "Description not available"
    }
    
    var wrappedDueDate: String {
        dueDate?.formatted(date: .abbreviated, time: .standard) ?? Date.now.formatted(date: .abbreviated, time: .standard)
    }
}

extension TodoEntity : Identifiable {

}
