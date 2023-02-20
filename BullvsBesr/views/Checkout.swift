//
//  Checkout.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/20/23.
//

import SwiftUI

struct Checkout: View {
    let t = Stocks()
    @State var index = 0
    var body: some View {
        VStack (spacing: 9){
            HStack{ Text("$846.15")
                    .font(.headline)
                    .fontWeight(.medium)
                Spacer()
                Text("Round 1 Complete")
                    .font(.headline)
                    .fontWeight(.medium)
                
            }
            VStack {
                
                Text ( "Thank you for your purchase!")
                    .font(.title)
                    .lineLimit(2)
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .frame(width: 300.0, height: 1.0)
                
                    Image(t.logo[0])
                        .logoFormat()
                Text(t.name[0])
                       .stockTitle()
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .frame(width: 300.0, height: 1.0)
                HStack { Text("1x")
                        .fontWeight(.bold)
                    Text(t.stockPrice[0])
                        .bold()
                        .padding()
                }
                HStack{
                    Text("TOTAL:")
                        .font(.title)
                    Text(t.stockPrice[0])
                        .font(.title)
                        .bold()
                        .padding()
                    
                }
            }
           .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
            
            
            
            
        }
        
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
    }
}
