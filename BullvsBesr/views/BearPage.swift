//
//  BearPage.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/9/23.
//
import SwiftUI

struct BearPage: View {
    @State private var timeRemaining = 120
    @State private var virtualMoney = 1500.0
    @State private var isInvesting = false
    @State private var isNextRound = false
    @State private var index = 0
    @State private var currentScenario: Scenario?
    @State private var sharesToBuy = 0
    @State private var showInvestSheet = false
    @State private var showScenarioSheet = false

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let scenarios: [Scenario]
    let stocks: Stocks
    
    var body: some View {
        VStack(spacing: 9) {
            HStack {
                Text("$\(virtualMoney, specifier: "%.2f")")
                    .font(.title)
                    .fontWeight(.medium)
                Spacer()
                Text("\(timeRemaining)")
                    .font(.system(size: 30, weight: .medium))
                
                Spacer()
                Text("Round \(index + 1)")
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
                Text("\(removeTrailingZeros(from: stocks.stocks[index].stockPrice))")
                    .bold()
                    .padding()
            }
            
            HStack {
                Button(action: {
                    showInvestSheet = true
                }) {
                    Text("INVEST")
                }
                .investFormat()
                .disabled(isNextRound || isInvesting)
                
                Spacer()
                
                Button(action: {
                    isNextRound = true
                    if let scenario = getRandomScenario() {
                        currentScenario = scenario
                    }
                }) {
                    Text("PASS")
                }
                .passFormat()
                .disabled(isNextRound || isInvesting)
            }
            
            Text(stocks.stocks[index].bearMarketScenarios[0])
                .bold()
                .padding()
            
            Spacer()
            
            if isNextRound {
                Button(action: {
                    goToNextRound()
                }) {
                    Text("Next Round")
                }
                .buttonStyle(.bordered)
                .padding()
            }
        }
        .onReceive(timer) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
            
            if timeRemaining == 0 {
                handleTimeUp()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .sheet(isPresented: $showInvestSheet) {
            VStack {
                Text(stocks.stocks[index].name)
                    .stockTitle()
                Image(stocks.stocks[index].logo)
                    .logoFormat()
                Text("Stock Price: $\(stocks.stocks[index].stockPrice)")
                Text("Virtual Money: $\(String(format: "%.2f", virtualMoney))")
                Stepper("Shares to Buy: \(sharesToBuy)", value: $sharesToBuy, in: 0...Int(virtualMoney/stocks.stocks[index].stockPrice))
                    .padding()
                Button("Done") {
                    invest()
                    showInvestSheet = false
                }
                .buttonStyle(.bordered)
                .padding()
            }
        }
        .sheet(item: $currentScenario) { scenario in
            VStack {
                Text(scenario.description)
                Button("Apply") {
                    applyScenario(scenario)
                }
                .buttonStyle(.bordered)
                .padding()
            }
        }
    }
    
    private func getRandomScenario() -> Scenario? {
        let randomIndex = Int.random(in: 0..<scenarios.count)
        return scenarios[randomIndex]
    }
    
    private func applyScenario(_ scenario: Scenario) {
        virtualMoney += scenario.amount
        currentScenario = nil // Dismiss the sheet
    }

    private func invest() {
        let totalPrice = stocks.stocks[index].stockPrice * Double(sharesToBuy)
        virtualMoney -= totalPrice
        if let scenario = currentScenario {
            virtualMoney += scenario.amount
        }
        goToNextRound()
    }

    private func goToNextRound() {
        if index < 9 {
            index += 1
            isNextRound = false
            timeRemaining = 120
            currentScenario = nil // Reset current scenario
        } else {
            // End of the game, display results
        }
    }
    
    private func handleTimeUp() {
        isNextRound = true
        if let scenario = getRandomScenario() {
            currentScenario = scenario
        }
    }
}

struct BearPage_Previews: PreviewProvider {
    static var previews: some View {
        BearPage(scenarios: [], stocks: Stocks())
    }
}
