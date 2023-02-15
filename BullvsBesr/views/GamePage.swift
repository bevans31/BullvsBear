//
//  Difficulty.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/8/23.
//

import SwiftUI

struct GamePage: View {
    @State private var timeRemaining = 60
    @State var index = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let t = Stocks()

    var body: some View {
        VStack(spacing: 9){
            HStack{
                Text("$1000.00")
                    .font(.title)
                    .fontWeight(.medium)
                Spacer()
                Text("\(timeRemaining)")
                    .font(.system(size: 30, weight: .medium))
                
                Spacer()
                Text("Round 1")
                    .font(.title)
                    .fontWeight(.medium)
            }

            Spacer()
           // TabView(selection: self.$index) {
                //9ForEach(0 ... t.name.count-1, id: \.self) { tt in
                    
                    VStack {
                        Text(t.name[0])
                            .stockTitle()
                        ZStack{
                            Rectangle()
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                            Image(t.logo[0])
                                .logoFormat()
                        }
                    }
                    
                    .padding()
               // }
            //}
            .frame(height: 300)
            HStack{
                Text(t.tickerName[0])
                    .bold()
                    .padding()
                Spacer()
                Text(t.stockPrice[0])
                    .bold()
                    .padding()
            }
            HStack{
                Button("INVEST"){
                } .investFormat()
                   Spacer()
                Button("PASS"){
                }
                .passFormat()
            }
         
            
               
            Spacer()
        }
       .onReceive(timer) { time in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
       }
        
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

        
    
struct GamePage_Previews: PreviewProvider {
    static var previews: some View {
        GamePage()
    }
}
