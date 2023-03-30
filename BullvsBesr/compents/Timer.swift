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
            } )
                .font(.system(size: 80, weight: .bold))
            
        }
        
    }
    
    struct TimerView_Previews: PreviewProvider {
       static var previews: some View {
           TimerView()
           
        }
    }
}

