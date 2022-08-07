//
//  WorkoutElement.swift
//  BoxingFitUniversity
//
//  Created by Chad Weirick on 8/6/22.
//

import SwiftUI

struct WorkoutElement: View {
    var workoutName: String
    var workoutMessage: String
    var workoutDuration: Double
    var body: some View {
        VStack{
            Text(workoutName)
            Text(workoutMessage)
            Text(String(workoutDuration))
        }
    }
}

struct WorkoutElement_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutElement(workoutName: "Enter a workout name", workoutMessage: "What message would you want to display?", workoutDuration: 10.0)
    }
}
