//
//  Onboarding screen.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/15/23.
//

import SwiftUI

struct Onboarding_screen: View {
    var body: some View {
        VStack(spacing:10){
            
            Text("Diffculty")
                .font(.title)
                .fontWeight(.heavy)
                .lineLimit(0)
                
            
            
        
            
            NavigationLink(destination: GamePage()){
                Text("Fundamentals")}
            .padding()
            .padding(.horizontal)
            .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
            .shadow(radius: 10)
            
            
            
            
            //                 .frame(maxWidth: .infinity, maxHeight: .infinity)
            //.edgesIgnoringSafeArea(.all)
        }
    }
    
    struct Onboarding_screen_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding_screen()
        }
    }
}
