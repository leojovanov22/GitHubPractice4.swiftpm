//
//  Untitled.swift
//  GitHubPractice4
//
//  Created by Leonardo Jovanov on 9/10/25.
//

import SwiftUI

struct HeaderView: View {
    @Binding var tasks: [Task]
    @State var newTask: String = ""
    var body: some View {
        HStack {
            TextField("Enter new task", text: $newTask)
            Button {
                tasks.append(Task(nameOfTask: newTask))
            } label: {
                Text("Add")
            }
        }
    }
}
