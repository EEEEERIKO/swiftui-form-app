//
//  ViewModel.swift
//  swiftui-form
//
//  Created by Erik Valencia Cardona on 27/04/26.
//
import SwiftUI
import Combine

class UserViewModel: ObservableObject {
    
    // MARK: - State
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var birthDate = Date()
    @Published var shouldSendNewsletter = false
    @Published var numberOfLikes = 0
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    // MARK: - Actions
    func saveUser() {
        guard !firstName.isEmpty else {
            alertMessage = "First name is required"
            showAlert = true
            return
        }
        
        guard !lastName.isEmpty else {
            alertMessage = "Last name is required"
            showAlert = true
            return
        }
        
        // Simulación de guardado
        print("User saved")
        
        alertMessage = "User saved successfully"
        showAlert = true
    }
}
