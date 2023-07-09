//
//  EndingScreen.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/9/23.
//

import SwiftUI

struct EndingScreen: View {
    let amount: Double
    
    var body: some View {
        VStack {
            Text("Game Over")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Final Amount: $\(amount, specifier: "%.2f")")
                .font(.title)
                .padding()
            
            // Add any other relevant information or UI elements
            
            // You can include buttons or actions to restart the game or perform other actions
            
            // For example, you can include a button to restart the game
            Button(action: {
                // Restart the game
            }) {
                Text("Restart")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}


struct EndingScreen_Previews: PreviewProvider {
    static var previews: some View {
        EndingScreen(amount: 0)
    }
}
