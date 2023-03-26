//
//  SignUpView.swift
//  testTaskVenera_k
//
//  Created by V K on 21.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State private var isValid = true
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                
                //changed to "sign up", 'cause "sign in" == "log in"
                Text("Sign up")
                    .font(.montserratSemiBold(size: 28))
                    .padding(.bottom, 80)
                
                
                TextField("First name", text: $firstName)
                    .font(.montserratRegular(size: 13))
                    .frame(height: 30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                    .padding(.bottom, 25)
                
                TextField("Last name", text: $lastName, onEditingChanged: { changed in
                    if !changed {
                        if self.emailValidator(self.email) {
                            self.isValid = true
                        } else {
                            self.isValid = false
                            self.showAlert = true
                        }
                    }
                })
                .font(.montserratRegular(size: 13))
                .frame(height: 30)
                .background(Color("textFieldBackground"))
                .cornerRadius(15)
                
                TextField("Email", text: $email)
                    .font(.montserratRegular(size: 13))
                    .frame(height: 30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                    .padding(.top, 25)
                    .alert("Invalid Email", isPresented: $showAlert) {
                        Button("OK", role: .cancel) {}
                    }
                
                Button {
                    //
                } label: {
                    Text("Sign up")
                        .frame(height: 47)
                        .font(.montserratBold(size: 15))
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color("customBlue"))
                .cornerRadius(16)
                .padding(.top, 28)
                
                HStack() {
                    Text("Already have an account?")
                        .font(.montserratRegular(size: 10))
                    
                    Button {
                        //
                    } label: {
                        Text("Log in")
                            .font(.montserratRegular(size: 10))
                        
                    }
                    .foregroundColor(Color("customBlue"))
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Button {
                        
                    } label: {
                        HStack {
                            Text("G")
                                .font(.title)
                                .fontWeight(.black)
                            Text("Sign up with Google")
                                .font(.montserratMedium(size: 14))
                        }
                    }
                    .padding()
                    
                    Button {
                        
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
    }
    
    func emailValidator(_ email: String) -> Bool {
        if email.count > 15 {
            return false
        }
        let format = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", format)
        return predicate.evaluate(with: email)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
