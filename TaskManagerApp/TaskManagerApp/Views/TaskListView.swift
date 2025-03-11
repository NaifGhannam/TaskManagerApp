//
//  TaskListView.swift
//  TaskManagerApp
//
//  Created by Mac on 11/09/1446 AH.
//

import SwiftUI

struct TaskListView: View {
    @StateObject var viewModel = TaskViewModel()
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationStack {
            VStack {
                // 🔹 Dark Mode Toggle
                Toggle("Dark Mode", isOn: $isDarkMode)
                    .padding()
                    .accessibilityLabel("Toggle Dark Mode")

                List {
                    ForEach(viewModel.tasks) { task in
                        NavigationLink(destination: TaskDetailView(task: task, viewModel: viewModel)) {
                            HStack {
                                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                    .onTapGesture {
                                        viewModel.toggleTaskCompletion(task: task)
                                    }
                                    .accessibilityLabel(task.isCompleted ? "Mark as incomplete" : "Mark as complete")
                                VStack(alignment: .leading) {
                                    Text(task.title)
                                        .font(.headline)
                                        .accessibilityLabel("Task title: \(task.title)")
                                    Text(task.detail)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                    .onDelete(perform: viewModel.deleteTask)
                }
                .animation(.default, value: viewModel.tasks)
            }
            .navigationTitle("Task Manager")
            .toolbar {
                NavigationLink("Add Task", destination: AddTaskView(viewModel: viewModel))
            }
            .preferredColorScheme(isDarkMode ? .dark : .light) 
        }
    }
}
