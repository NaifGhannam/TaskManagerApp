//
//  TaskDetailView.swift
//  TaskManagerApp
//
//  Created by Mac on 11/09/1446 AH.
//

import SwiftUI

struct TaskDetailView: View {
    @State var task: Task
    @ObservedObject var viewModel: TaskViewModel
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            TextField("Edit Title", text: $task.title)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Edit Detail", text: $task.detail)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Save Changes") {
                if let index = viewModel.tasks.firstIndex(where: { $0.id == task.id }) {
                    viewModel.tasks[index] = task
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .padding()
            .accessibilityLabel("Save Task Changes Button")

            Button("Delete Task") {
                if let index = viewModel.tasks.firstIndex(where: { $0.id == task.id }) {
                    viewModel.tasks.remove(at: index)
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .foregroundColor(.red)
            .accessibilityLabel("Delete Task Button")
        }
        .padding()
        .navigationTitle("Task Details")
    }
}
