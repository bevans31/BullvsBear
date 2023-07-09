//
//  GamePage.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/1/23.
//

import SwiftUI

struct BullPage: View {
    @State private var timeRemaining = 120
    @State var index = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let stocks: Stocks

    var body: some View {
        VStack(spacing: 9) {
            HStack {
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

            VStack {
                Text(stocks.stocks[index].name)
                    .stockTitle()
                ZStack {
                    Rectangle()
                        .border(Color.black, width: 2)
                        .foregroundColor(Color.white)
                        .cornerRadius(5.0)

                    Image(stocks.stocks[index].logo)
                        .logoFormat()
                }
            }
            .padding()
            .frame(height: 300)

            HStack {
                Text(stocks.stocks[index].tickerName)
                    .bold()
                    .padding()
                Spacer()
                Text("\(stocks.stocks[index].stockPrice)")
                    .bold()
                    .padding()
            }

            HStack {
                Button("INVEST") {
                }
                .investFormat()
                Spacer()
                Button("PASS") {
                }
                .passFormat()
            }

            Text(stocks.stocks[index].bullMarketScenarios[0])
                .bold()
                .padding()

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

    
struct BullPage_Previews: PreviewProvider {
    static var previews: some View {
        BullPage(stocks: Stocks())
    }
}
