//
//  ContentView.swift
//  swiftui-form
//
//  Created by Erik Valencia Cardona on 22/04/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthDate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 0
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Personal Information")){
                    TextField("First Name", text: $firstName)
                    TextField("First Name", text: $lastName)
                    DatePicker("BirthDate", selection: $birthDate, displayedComponents: .date)
                }
                
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                    Stepper("Number of likes", value: $numberOfLikes, in:0...100)
                    Text("This video has  \(numberOfLikes) likes")
                    Link("Terms of Service", destination: URL(string: "https://virtual.unac.edu.co")!)
                }
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    Button("Save", action: saveUser)
                }
            }
        }
        .tint(.blue)
    }
}

func saveUser(){
    print("User saved")
}

#Preview {
    ContentView()
}

extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
