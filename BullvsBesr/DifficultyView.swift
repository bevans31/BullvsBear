//
//  Difficulty.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/9/23.
//
import SwiftUI

struct DifficultyView: View {
    @State private var selectedDifficulty: Difficulty?
    @State private var navigate = false
    
    let difficulties: [Difficulty] = [
        Difficulty(name: "Market Choice", description: "Easy mode with the option to have a bull or bear market", color: .green),
        Difficulty(name: "Mixed Market", description: "Hard mode with more volatile stocks and prices ", color: .red)
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Select Difficulty")
                .font(.title)
                .fontWeight(.bold)
            
            ForEach(difficulties) { difficulty in
                VStack {
                    Button(action: {
                        selectedDifficulty = difficulty
                    }) {
                        Text(difficulty.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(selectedDifficulty == difficulty ? .white : .black)
                            .padding(20) // Increase padding to make the button bigger
                            .background(selectedDifficulty == difficulty ? difficulty.color : Color.accentColor.opacity(0.3))
                            .cornerRadius(10)
                    }
                    
                    // Show description without pressing the button
                    if selectedDifficulty == difficulty {
                        Text(difficulty.description)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                }
            }
            
            // "Play Now" button
            Button(action: {
                navigate = true
            }) {
                Text("Play Now")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            .disabled(selectedDifficulty == nil) // Disable the button if no difficulty is selected
            .background(
                NavigationLink(destination: destinationView(), isActive: $navigate) {
                    EmptyView()
                }
            )
        }
        .padding()
    }
    
    // Determine the destination view based on the selected difficulty
    private func destinationView() -> AnyView {
        if selectedDifficulty?.name == "Market Choice" {
            return AnyView(EasyMode())
        } else if selectedDifficulty?.name == "Mixed Market" {
            return AnyView(HardMode())
        } else {
            return AnyView(EmptyView())
        }
    }
}

struct Difficulty: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let description: String
    let color: Color
}

struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView()
    }
}

