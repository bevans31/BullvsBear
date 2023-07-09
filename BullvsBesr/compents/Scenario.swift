//
//  Scenario.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/2/23.
//

import Foundation
import SwiftUI


struct Scenario: Identifiable {
    let id = UUID()
    let description: String
    let amount: Double
}

let scenarios = [
    Scenario(description: "Received a dividend payment", amount: Double.random(in: 0...500)),
    Scenario(description: "Stock price surged, sell at a profit", amount: Double.random(in: 0...500)),
    Scenario(description: "Unexpected medical expenses", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received a bonus at work", amount: Double.random(in: 0...500)),
    Scenario(description: "Stock market crash, significant losses", amount: -Double.random(in: 0...500)),
    Scenario(description: "Won a small lottery prize", amount: Double.random(in: 0...500)),
    Scenario(description: "Paid off a debt", amount: Double.random(in: 0...500)),
    Scenario(description: "Received an inheritance", amount: Double.random(in: 0...500)),
    Scenario(description: "Car repair costs", amount: -Double.random(in: 0...500)),
    Scenario(description: "Got a raise at work", amount: Double.random(in: 0...500)),
    Scenario(description: "Unexpected home repairs", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received a tax refund", amount: Double.random(in: 0...500)),
    Scenario(description: "Paid for a vacation", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received a scholarship", amount: Double.random(in: 0...500)),
    Scenario(description: "Emergency pet expenses", amount: -Double.random(in: 0...500)),
    Scenario(description: "Sold an item at a garage sale", amount: Double.random(in: 0...500)),
    Scenario(description: "Investment in a successful startup", amount: Double.random(in: 0...500)),
    Scenario(description: "Lost a bet", amount: -Double.random(in: 0...500)),
    Scenario(description: "Won a contest", amount: Double.random(in: 0...500)),
    Scenario(description: "Sudden increase in rent", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received a work promotion", amount: Double.random(in: 0...500)),
    Scenario(description: "Costly home renovation project", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received an insurance payout", amount: Double.random(in: 0...500)),
    Scenario(description: "Paid for a professional certification", amount: -Double.random(in: 0...500)),
    Scenario(description: "Profitable investment in cryptocurrency", amount: Double.random(in: 0...500)),
    Scenario(description: "Expensive car maintenance", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received a gift from a friend", amount: Double.random(in: 0...500)),
    Scenario(description: "Costly home appliance repair", amount: -Double.random(in: 0...500)),
    Scenario(description: "Successful stock options exercise", amount: Double.random(in: 0...500)),
    Scenario(description: "Unexpected legal fees", amount: -Double.random(in: 0...500)),
    Scenario(description: "Received a salary bonus", amount: Double.random(in: 0...500))
]




func getRandomScenario() -> Scenario {
    let randomIndex = Int.random(in: 0..<scenarios.count)
    return scenarios[randomIndex]
}

