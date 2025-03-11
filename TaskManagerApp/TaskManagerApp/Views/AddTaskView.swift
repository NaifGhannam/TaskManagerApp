//
//  AddTaskView.swift
//  TaskManagerApp
//
//  Created by Mac on 11/09/1446 AH.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var title = ""
    @State private var detail = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            TextField("Task Title", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .accessibilityLabel("Task Title Input")
            
            TextField("Task Detail", text: $detail)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .accessibilityLabel("Task Detail Input")
            
            Button("Add Task" , systemImage: "plus") {
                if !title.isEmpty {
                    viewModel.addTask(title: title, detail: detail)
                    dismiss()
                }
            }
            .padding()
            .accessibilityLabel("Add Task Button")
        }
        .padding()
        .navigationTitle("Add Task")
    }
}


