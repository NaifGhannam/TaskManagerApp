//
//  TaskViewModel.swift
//  TaskManagerApp
//
//  Created by Mac on 11/09/1446 AH.
//

import SwiftUI

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []

    func addTask(title: String, detail: String) {
        let newTask = Task(title: title, detail: detail)
        tasks.append(newTask)
    }

    func toggleTaskCompletion(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
            tasks.sort { !$0.isCompleted && $1.isCompleted }
        }
    }

    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}
