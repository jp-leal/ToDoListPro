//
//  DetailView.swift
//  ToDoListPro
//
//  Created by Joao Leal on 4/18/24.
//

import SwiftUI

struct DetailView: View {
    
    var passedValue: String
    @Environment (\.dismiss) private var dismiss
    @State private var toDo = ""
    @State private var reminderIsOn = false
    @State private var dueData = Date.now + (60*60*24)
    @State private var notes = ""
    @State private var isCompleted = false
    var body: some View {
        List{
            TextField("Enter To Do here", text: $toDo)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
            
            Toggle("Set Reminder", isOn: $reminderIsOn)
            DatePicker("Date", selection: $dueData)
                .disabled(!reminderIsOn)
            
            Text("Notes: ")
                .padding(.top)
            TextField("Notes", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .listRowSeparator(.hidden)
            
            Toggle("Done", isOn: $isCompleted)
                .padding(.top)
            
            
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .topBarLeading){ Button("Cancel") {
                dismiss()
            }
            }
            ToolbarItem(placement: .topBarTrailing){ Button("SAVE") {
                //ADD SAVE
            }
            }
        }
    }
}


#Preview {
    DetailView(passedValue: "Item 1")
}
