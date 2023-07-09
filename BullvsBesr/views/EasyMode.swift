//
//  Onboarding screen.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/15/23.
//

import SwiftUI

struct EasyMode: View {
    var body: some View {
        VStack(spacing:10){
            
            Text("Market")
                .font(.title)
                .fontWeight(.heavy)
                .lineLimit(0)
                
            
            
        
            
            NavigationLink(destination: BullPage(scenarios: scenarios, stocks: Stocks())){
                Image("Bull")}

            NavigationLink(destination: BearPage(scenarios: scenarios, stocks: Stocks())){
                Image("Bear")}
            
        
            
            
            
            
            
            
            //                 .frame(maxWidth: .infinity, maxHeight: .infinity)
            //.edgesIgnoringSafeArea(.all)
        }
    }
    
    struct EasyMode_Previews: PreviewProvider {
        static var previews: some View {
            EasyMode()
        }
    }
}
