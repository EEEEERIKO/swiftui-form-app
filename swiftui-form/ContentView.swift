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

    var body: some View {
        NavigationView{
            Form {
                TextField("First Name", text: $firstName)
                TextField("First Name", text: $lastName)

            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    ContentView()
}
