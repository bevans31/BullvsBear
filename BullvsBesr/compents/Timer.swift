//
//  Timer.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/9/23.
//

import SwiftUI

struct TimerView: View {
    @State var countDownTimer = 50
    @State var timerRunning = true
    
    let timer = Timer.publish(every:1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(countDownTimer)")
                .onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = true
                    }
                }
            Button( "Stop", action: {
                timer.upstream.connect().cancel()
               // timer.upstream.autoconnect()
            } )
            Button ("Resume", action: { timerRunning = true
                
            })
                .font(.system(size: 80, weight: .bold))
            
        }
        
        
    }
    
    struct TimerView_Previews: PreviewProvider {
       static var previews: some View {
           TimerView()
           
        }
    }
}

//@State private var timeRemaining = 120
//@State private var virtualMoney = 1500.0
//@State private var isInvesting = false
//@State private var isNextRound = false
//@State private var index = 0
//@State private var currentScenario: Scenario?
//@State private var sharesToBuy = 0
//@State private var showInvestSheet = false
//let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//let scenarios: [Scenario]
//let stocks: Stocks

