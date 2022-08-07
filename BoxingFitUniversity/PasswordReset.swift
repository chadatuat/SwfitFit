//
//  PasswordReset.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 8/6/22.
//

import SwiftUI

struct PasswordReset: View {
    @State var email: String = ""
    var body: some View {
        VStack{
            NavigationLink(destination: ContentView()) {
                VStack {
                    Text("Enter your email address and press the button in order to send an email and return to the login screen:")
                    TextField(
                        "EMail",
                        text: $email
                    ).padding(.horizontal, 15.0)
                        .border(.black, width: 2)
                        .font(.body)
                        .scaledToFit()
                    NavigationLink(destination: ContentView()) {
                        Text("Reset/Login")
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
    }
}

struct PasswordReset_Previews: PreviewProvider {
    static var previews: some View {
        PasswordReset()
    }
}
