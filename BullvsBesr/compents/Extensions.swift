//
//  File.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/14/23.
//
import Foundation
import SwiftUI
import AVFoundation
import AVKit

    extension Text {
        func stockTitle() -> some View {
            self.font(.title)
                .bold()
                .padding()
        }
    }
    
    extension Image {
        func logoFormat() -> some View {
            self   .resizable()
                .frame(width: 180.0, height: 200.0)
                .padding(.horizontal)
                .scaledToFit()
        }
    }
    
func removeTrailingZeros(from value: Double) -> Double {
    let formatter = NumberFormatter()
    formatter.minimumFractionDigits = 0
    formatter.maximumFractionDigits = 16 // maximum precision
    let number = NSNumber(value: value)
    let string = formatter.string(from: number) ?? ""
    return Double(string) ?? value
}



    
    
    extension Button {
        func investFormat() -> some View {
            self .padding(.horizontal, 2.0)
                .frame(maxWidth: 100, maxHeight: 80)
                .contentShape(Rectangle())
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .shadow(radius: 0)
                .font(.system(size: 22))
            
        }
    }

    extension Button {
        func passFormat() -> some View {
            self .padding(.horizontal, 2.0)
                .frame(maxWidth: 100, maxHeight: 80)
                .contentShape(Rectangle())
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .shadow(radius: 0)
                .font(.system(size: 22))
        
        }
    }
    

