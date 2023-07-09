//
//  GameViewController.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/1/23.
//

import Foundation
import SwiftUI
import UIKit
import UIKit



struct Round {
    let stocks: [Stock]
    let scenario: String
}

class GameViewController: UIViewController {
    var user: User!
    var rounds: [Round] = []
    var currentRoundIndex = 0
    var currentRound: Round?
    var timer: Timer?
    var timeRemaining = 120
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the rounds and stocks
        //loadRounds()
        
        // Start the first round
        startRound()
        
        // Start the timer
        startTimer()
    }
//
//    func loadRounds() {
//        // Dummy stocks
//        let stock1 = Stock(name: "Stock A", price: 50.0)
//        let stock2 = Stock(name: "Stock B", price: 75.0)
//        let stock3 = Stock(name: "Stock C", price: 100.0)
//
//        // Dummy scenarios
//        let scenario1 = "Scenario 1"
//        let scenario2 = "Scenario 2"
//
//        // Dummy rounds
//        let round1 = Round(stocks: [stock1, stock2, stock3], scenario: scenario1)
//        let round2 = Round(stocks: [stock1, stock2, stock3], scenario: scenario2)
//
//        rounds = [round1, round2]
//    }
    
    func startRound() {
        guard currentRoundIndex < rounds.count else {
            // All rounds completed, display final results
            displayFinalResults()
            return
        }
        
        currentRound = rounds[currentRoundIndex]
        
        // Display stock information and scenario to the user
        // ...
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            timer?.invalidate()
            handleRoundEnd()
        }
    }
    
    func handleRoundEnd() {
        // Perform necessary actions when the round ends
        // ...
        
        // Move to the next round
        currentRoundIndex += 1
        startRound()
        timeRemaining = 120
        startTimer()
    }
    
    func displayFinalResults() {
        // Calculate and display the user's overall investment performance and results
        // ...
    }
}

