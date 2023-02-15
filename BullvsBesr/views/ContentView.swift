//
//  ContentView.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 1/31/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing:10) {
              VStack(spacing:10){
                    Image("glow")
                    
                    Text("\"Financial literacy is one of the most important components of economic success. Without education and knowledge about financial management and investments, individuals, businesses, and communities won't be successful in accumulating wealth or using it to its fullest potential in the future.\" - Robert Kiyosaki\"")
                        .font(.system(size: 11, weight: .light, design: .default))
                        .frame(minWidth: 10, minHeight: 100, alignment: .leading)
                        .clipped()
                        .lineLimit(8)
                        .padding()
                    
                    
                }
                NavigationLink(destination: Onboarding_screen()){
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
    

