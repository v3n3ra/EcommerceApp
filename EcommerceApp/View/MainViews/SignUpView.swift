//
//  SignUpView.swift
//  EcommerceApp
//
//  Created by V K on 21.03.2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var isInvalid: Bool = false
    @State private var emptyFields: Bool = false
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                
                // changed to "sign up".  "sign in" == "log in"
                Text("Sign up")
                    .font(.montserratSemiBold(size: 28))
                    .padding(.bottom, 80)
                
                TextField("First name", text: $firstName)
                    .font(.montserratRegular(size: 13))
                    .frame(height: UIConstants.height/30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                    .padding(.bottom, 25)
                    .autocorrectionDisabled()
                
                TextField("Last name", text: $lastName)
                    .font(.montserratRegular(size: 13))
                    .frame(height: UIConstants.height/30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                    .autocorrectionDisabled()
                
                TextField("Email", text: $email)
                    .font(.montserratRegular(size: 13))
                    .frame(height: UIConstants.height/30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                    .padding(.top, 25)
                    .autocorrectionDisabled()
                
                Button {
                    if firstName.isEmpty || lastName.isEmpty || email.isEmpty {
                        emptyFields = true
                    } else {
                        if Helpers.validateEmail(email) == false {
                            self.isInvalid = true
                        } else {
                            coordinator.push(.tabBar)
                            UserDefaults.standard.set(email, forKey: "email")
                            UserDefaults.standard.set(firstName, forKey: "firstName")
                            firstName = ""
                            lastName = ""
                            email = ""
                        }
                    }
                } label: {
                    Text("Sign up")
                        .frame(height: UIConstants.height/18)
                        .font(.montserratBold(size: UIConstants.height/59))
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color("customBlue"))
                .cornerRadius(16)
                .padding(.top, 28)
                .padding(.bottom, 10)
                .alert("Submit all information", isPresented: $emptyFields) {
                    Button("OK", role: .cancel) {}
                }
                .alert("Invalid Email", isPresented: $isInvalid) {
                    Button("OK", role: .cancel) {}
                }
                
                HStack() {
                    Text("Already have an account?")
                        .font(.montserratRegular(size: 10))
                    
                    Button {
                        coordinator.push(.logIn)
                    } label: {
                        Text("Log in")
                            .font(.montserratSemiBold(size: 10))
                            .foregroundColor(Color("customBlue"))
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Button {
                        coordinator.push(.tabBar)
                    } label: {
                        HStack {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .padding(.trailing, 5)
                            Text("Sign up with Google")
                                .font(.montserratMedium(size: 14))
                        }
                    }
                    .padding()
                    
                    Button {
                        coordinator.push(.tabBar)
                    } label: {
                        HStack(alignment: .center) {
                            Image(systemName: "apple.logo")
                                .font(.system(size: 25))
                                .fontWeight(.black)
                            Text("Sign up with Apple")
                                .font(.montserratMedium(size: 14))
                        }
                    }
                    .padding()
                }
                .foregroundColor(.black)
                .padding(.vertical, 20)
                
                Spacer()
            }
            .padding(.horizontal, 50)
            .multilineTextAlignment(.center)
        }
        .toolbar(.hidden, for: .automatic)
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
