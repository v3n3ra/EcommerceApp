//
//  LoginView.swift
//  testTaskVenera_k
//
//  Created by V K on 21.03.2023.
//

import SwiftUI

struct LogInView: View {
    @State private var firstName = ""
    @State private var password = ""
    @FocusState var focus1: Bool
    @FocusState var focus2: Bool
    @State private var showPassword = false
    
    var body: some View {
        ZStack {
            Color("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Welcome back")
                    .font(.montserratSemiBold(size: 28))
                    .padding(.bottom, 80)
                
                
                TextField("First name", text: $firstName)
                    .font(.montserratRegular(size: 13))
                    .frame(height: 30)
                    .background(Color("textFieldBackground"))
                    .cornerRadius(15)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("textFieldBackground"))
                        .frame(width: .infinity, height: 30)
                        .cornerRadius(15)
                    
                    HStack {
                        
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
                        
                        if !password.isEmpty {
                            Button {
                                showPassword.toggle()
                                if showPassword { focus1 = true } else { focus2 = true }
                            } label: {
                                Image(systemName: self.showPassword ? "eye.slash.fill" : "eye.fill").font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color(.darkGray))
                                    .padding()
                            }
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Login")
                        .font(.montserratBold(size: 14))
                        .frame(height: 50)
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color("customBlue"))
                .cornerRadius(15)
                .padding(.vertical, 15)
                
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
