//
//  SelectWorkout.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 8/6/22.
//

import SwiftUI

struct SelectWorkout: View {
    @State var workoutName: String = ""
    var body: some View {
        VStack{
            TextField(
                "HIIT Name",
                text: $workoutName,
                onEditingChanged: {_ in
                        print("log")
                  }
            ).padding(.horizontal, 15.0)
                .border(.black, width: 2)
                .font(.body)
                .scaledToFit()
            // list tasks
            NavigationLink(destination: WorkoutElement(workoutName: "Enter a workout name", workoutMessage: "What message would you want to display?", workoutDuration: 10.0)) {
                Text("New")
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
            }
            NavigationLink(destination: ListOfWorkOuts()) {
                Text("Remove")
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray),Color(.blue)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
            }
            NavigationLink(destination: ListOfWorkOuts()) {
                Text("Save")
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

struct SelectWorkout_Previews: PreviewProvider {
    static var previews: some View {
        SelectWorkout()
    }
}
