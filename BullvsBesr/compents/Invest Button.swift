//
//  Invest Button.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/7/23.
//

import SwiftUI

struct Invest_Button: View {
    var text: String
    
    var body: some View {
        Button("INVEST"){
         
        }
        
        .padding()
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .shadow(radius: 10)
        .font(.system(size: 22))
            Spacer()
            Text("Pass")
        .padding()
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .shadow(radius: 10)
        .font(.system(size: 22))
        
        
       
     
        
       
            
               
            
        
    }
}

struct Invest_button_Previews: PreviewProvider {
    static var previews: some View {
        Invest_Button(text: "")
    }
}
