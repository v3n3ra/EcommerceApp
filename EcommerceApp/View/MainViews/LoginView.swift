//
//  LoginView.swift
//  EcommerceApp
//
//  Created by V K on 21.03.2023.
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    @State private var firstName: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    @State private var userDoesntExist: Bool = false
    @State private var emptyFields: Bool = false
    
    @FocusState private var focus1: Bool
    @FocusState private var focus2: Bool

    var body: some View {
        ZStack {
            // button in case user wants to go back
            CustomBackButton()
            
            Color("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Welcome back")
                    .font(.montserratSemiBold(size: 28))
                    .padding(.bottom, 80)
                
                TextField("First name", text: $firstName)
                    .font(.montserratRegular(size: 13))
                    .frame(width: UIConstants.width/1.3, height: UIConstants.height/30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                    .autocorrectionDisabled()
                
                ZStack {
                    Rectangle()
                        .frame(width: UIConstants.width/1.3, height: UIConstants.height/30).foregroundColor(Color("textFieldBackground"))
                        .cornerRadius(15)
                    
                    ZStack {
                        ZStack {
                            TextField("Password", text: $password)
                                .font(.montserratRegular(size: 13))
                                .textInputAutocapitalization(.never)
                                .keyboardType(.asciiCapable)
                                .frame(height: 30)
                                .focused($focus1)
                                .opacity(showPassword ? 1 : 0)
                                .padding(.vertical, 25)
                            
                            SecureField("Password", text: $password)
                                .font(.montserratRegular(size: 13))
                                .textInputAutocapitalization(.never)
                                .keyboardType(.asciiCapable)
                                .frame(height: 30)
                                .focused($focus1)
                                .opacity(showPassword ? 0 : 1)
                                .padding(.vertical, 25)
                        }
                        
                        HStack {
                            Spacer()
                            
                            Button {
                                showPassword.toggle()
                                if showPassword { focus1 = true } else { focus2 = true }
                            } label: {
                                Image(systemName: self.showPassword ? "eye.fill" : "eye.slash.fill").font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color(.darkGray))
                                    .padding()
                            }
                        }
                    }
                }
                .padding(.bottom, 70)
                
                Button {
                        if firstName.isEmpty || password.isEmpty {
                            emptyFields = true
                        } else {
                            if UserDefaults.standard.string(forKey: "firstName") == firstName {
                                coordinator.push(.tabBar)
                            } else {
                            userDoesntExist = true
                        }
                    }
                } label: {
                    Text("Login")
                        .font(.montserratBold(size: UIConstants.height/59))
                        .frame(height: 50)
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color("customBlue"))
                .cornerRadius(15)
                .padding(.vertical, 15)
                .alert("User doesn't exist", isPresented: $userDoesntExist) {
                    Button("OK", role: .cancel) {}
                }
                .alert("Submit all information", isPresented: $emptyFields) {
                    Button("OK", role: .cancel) {}
                }
                
                Spacer()
                Spacer()
                
            }
            .padding(.horizontal, 50)
            .multilineTextAlignment(.center)
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
