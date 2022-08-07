//
//  CreateNewAccount.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 8/6/22.
//

import SwiftUI

struct CreateNewAccount: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var passwordVerify: String = ""
    var body: some View {
        VStack{
            TextField(
                "EMail",
                text: $email
            ).padding(.horizontal, 15.0)
                .border(.black, width: 2)
                .font(.body)
                .scaledToFit()
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
                Text("Create Account")
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                }
            }
        }
        
    }

struct CreateNewAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewAccount()
    }
}
