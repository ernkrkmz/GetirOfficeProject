//
//  Player.swift
//  OfisSaatiProjesi
//
//  Created by Gizem Coşkun on 28.03.2024.
//

class Player {
    var nickname: String
    var score: Int = 0
    
    init(nickname: String) {
        self.nickname = nickname
    }
    
    func displayScore() {
        print("\(nickname)'s Score: \(score)")
    }
    
    func increaseScore() {
        score += 1
    }
}

