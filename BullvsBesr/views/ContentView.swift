//
//  ContentView.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 1/31/23.
//

import SwiftUI
import AVKit
import AVFoundation
import Foundation
struct ContentView: View {
    
    func randomQuote() -> String {
        let randomNumber = Int.random(in: 0..<quotes.count)
        return quotes[randomNumber]
    }

    var body: some View {
        
        
        NavigationView {
            
            VStack(spacing:1) {
              VStack(spacing:1){
                  Logovideo("GifImage")
                     
                  
                      .frame(width: 300.0, height: 300.0)
                    
                  Text(randomQuote())
                      .font(.system(size: 11, weight: .light, design: .default))
                      .frame(minWidth: 10, minHeight: 100, alignment: .leading)
                      .clipped()
                      .lineLimit(8)
                      .padding()

                    
                    
                }
                NavigationLink(destination: DifficultyView()){
                    Text("Create Network")}
                .padding()
                .padding(.horizontal)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .shadow(radius: 10)

               
                
                
   //                 .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.edgesIgnoringSafeArea(.all)
            }
           .navigationBarHidden(true)
      }
        
    }
}
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

