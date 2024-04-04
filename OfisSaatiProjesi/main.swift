//
//  main.swift
//  OfisSaatiProjesi
//
//  Created by Gizem Coşkun on 27.03.2024.
//

import Foundation

func play() {
    print("Welcome to the Slingshot Game! Let's get ready to play!")
    guard let nickname = promptForInput(prompt: "Enter your nickname:") else { return }
    
    while true {
        let player = Player(nickname: nickname)
    
        guard let angle = promptForDoubleInput(prompt: "Enter the launch angle (0-90 degrees):", range: 0...90) else { return }
        guard let velocity = promptForDoubleInput(prompt: "Enter the launch velocity (0-100 m/s):", range: 0...100) else { return }
        guard let position = promptForDoubleInput(prompt: "Enter the position of the bottle (0-1500 meters):", range: 0...1500) else { return }
        
        let slingshot = Slingshot(angle: angle, velocity: velocity)
        let bottle = Bottle(position: position)
        let controller = GameController(player: player, slingshot: slingshot, bottle: bottle)
        controller.launch()
        
        print("Do you want to continue playing? (yes/no)")
        guard let continueResponse = readLine()?.lowercased() else { return }
        if continueResponse != "yes" {
            print("Exiting the game...")
            break
        }
    }
}

func promptForInput(prompt: String) -> String? {
    print(prompt)
    return readLine()
}

func promptForDoubleInput(prompt: String, range: ClosedRange<Double>) -> Double? {
    while true {
        print(prompt)
        guard let input = readLine(),
              let value = Double(input),
              range.contains(value) else {
            print("Invalid input. Please enter a valid number within the range \(range).")
            continue
        }
        return value
    }
}

play()

