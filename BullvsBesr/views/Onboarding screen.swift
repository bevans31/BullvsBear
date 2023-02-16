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
            
            Text("Market")
                .font(.title)
                .fontWeight(.heavy)
                .lineLimit(0)
                
            
            
        
            
            NavigationLink(destination: GamePage()){
                Image("Bull")}
            
            NavigationLink(destination: GamePage2()){
                Image("Bear")}
            
        
            
            
            
            
            
            
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
