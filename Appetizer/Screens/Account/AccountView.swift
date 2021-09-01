//
//  AccountView.swift
//  Appetizer
//
//  Created by Pawel Klapuch on 8/30/21.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewModel()
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Personal Info")) {
                
                    TextField("First Name", text: $viewModel.user.firstName)

                    TextField("Last Name", text: $viewModel.user.lastName)
                    
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Date Of Birth", selection: $viewModel.user.dateOfBirth, displayedComponents: .date)
                    
                    SaveButton(viewModel: viewModel)
                }
                
                Section(header: Text("Request")) {
                    
                    ToggleView(title: "Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    ToggleView(title: "Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                
            }
            .navigationTitle("😀 Account")
            .onAppear { viewModel.loadUser() }
        }
    }
}

struct ToggleView: View {
    
    let title: String
    @Binding var isOn: Bool
    
    var body: some View {
        
        Toggle(title, isOn: $isOn)
            .toggleStyle(SwitchToggleStyle(tint: Color.brandPrimary))
    }
}

struct SaveButton: View {
    
    let viewModel: AccountViewModel
    
    var body: some View {
        
        Button {
            viewModel.saveChanges()
        }
        label: {
            
            Text("Save Changes")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
