//
//  ContentView.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    @State var showView = false
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        
        NavigationView {
                VStack {
                    HStack
                    {
                        Text("Sign In")
                            .font(.title)
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                        Spacer()
                    }
                    Text("User Name:")
                        .font(.body)
                    TextField(
                        "User Name",
                        text: $username,
                        onEditingChanged: {_ in
                                print("log")
                          }
                    ).padding(.horizontal, 15.0)
                        .border(.black, width: 2)
                        .font(.body)
                        .scaledToFit()
                    Text("Password:")
                        .font(.body)
                    TextField(
                        "User Name",
                        text: $username,
                        onEditingChanged: {_ in
                                print("log")
                          }
                    ).padding(.horizontal, 15.0)
                        .border(.black, width: 2)
                        .font(.body)
                        .scaledToFit()
                    NavigationLink(destination: ListOfWorkOuts()) {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                            .font(.body)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                }
                    NavigationLink(destination: PasswordReset()) {
                        Text("Forgot Password")
                            .fontWeight(.semibold)
                            .font(.body)
                }
                    Text("New User")
                        .font(.body)
                    NavigationLink(destination: CreateNewAccount()) {
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                            .font(.body)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                }
                    Spacer()
              }
            }
    
        }
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
