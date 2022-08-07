//
//  ListOfWorkOuts.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 8/6/22.
//

import SwiftUI

struct ListOfWorkOuts: View {
    var body: some View {
        VStack{
            // select a list of available workouts
            NavigationLink(destination: ListOfWorkOuts()) {
                Text("Begin")
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
            }
            NavigationLink(destination: SelectWorkout()) {
                Text("Edit")
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
            }
            NavigationLink(destination: SelectWorkout()) {
                Text("New")
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

struct ListOfWorkOuts_Previews: PreviewProvider {
    static var previews: some View {
        ListOfWorkOuts()
    }
}
