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
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack{
            Form {
                Section("Personal Information"){
                    TextField("First Name", text: $firstName).textContentType(.givenName)
                    TextField("Last Name", text: $lastName).textContentType(.familyName)
                    DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                }
                
                Section("Actions") {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                    Stepper( value: $numberOfLikes, in:0...100){
                        Text("Likes: \(numberOfLikes)")
                    }
                    if let url = URL(string: "https://virtual.unac.edu.co"){
                        Link("Terms of Service", destination: url)
                    }
                }
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button{
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    Button("Save", action: saveUser)
                }
            }
            .alert("User Saved", isPresented: $showAlert) {Button("OK", role: .cancel) { }}
        }
        .tint(.blue)
    }
    func saveUser(){
        guard !firstName.isEmpty else {
            print("Nombre inválido")
            return
        }
        
        guard !lastName.isEmpty else {
            print("Apellidos inválidos")
            return
        }
        print("User saved")
        showAlert = true
        
    }
}



#Preview {
    ContentView()
}

extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
