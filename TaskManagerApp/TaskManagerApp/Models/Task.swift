//
//  Task.swift
//  TaskManagerApp
//
//  Created by Mac on 11/09/1446 AH.
//
import Foundation

struct Task: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var detail: String
    var isCompleted: Bool = false

    
    static func == (lhs: Task, rhs: Task) -> Bool {
        return lhs.id == rhs.id &&
               lhs.title == rhs.title &&
               lhs.detail == rhs.detail &&
               lhs.isCompleted == rhs.isCompleted
    }
}
