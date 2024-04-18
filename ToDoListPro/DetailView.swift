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
    
    var body: some View {
        VStack{
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text("Legend \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    DetailView(passedValue: "Item 1")
}
