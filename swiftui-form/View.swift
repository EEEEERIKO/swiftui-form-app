//
//  View.swift
//  swiftui-form
//
//  Created by Erik Valencia Cardona on 27/04/26.
//
import SwiftUI
import Combine

struct ContentView: View {
    @StateObject private var vm = UserViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Personal Information") {
                    TextField("First Name", text: $vm.firstName)
                        .textContentType(.givenName)
                    
                    TextField("Last Name", text: $vm.lastName)
                        .textContentType(.familyName)
                    
                    DatePicker(
                        "Birth Date",
                        selection: $vm.birthDate,
                        displayedComponents: .date
                    )
                    .datePickerStyle(.compact)
                }
                
                Section("Actions") {
                    Toggle("Send Newsletter", isOn: $vm.shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                    
                    Stepper(value: $vm.numberOfLikes, in: 0...100) {
                        Text("Likes: \(vm.numberOfLikes)")
                    }
                    
                    if let url = URL(string: "https://virtual.unac.edu.co") {
                        Link("Terms of Service", destination: url)
                    }
                }
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    
                    Button("Save") {
                        vm.saveUser()
                    }
                }
            }
            .alert(vm.alertMessage, isPresented: $vm.showAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .tint(.blue)
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
