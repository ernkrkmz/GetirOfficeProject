//
//  GameController.swift
//  OfisSaatiProjesi
//
//  Created by Gizem Coşkun on 28.03.2024.
//

class GameController {
    var player: Player
    var slingshot: Slingshot?
    var bottle: Bottle?
    
    init(player: Player, slingshot: Slingshot, bottle:Bottle) {
        self.player = player
        self.slingshot = slingshot
        self.bottle = bottle
    }
    
    func launch() {
        guard let slingshot = slingshot, let bottle = bottle else {
            print("Game not properly set up.")
            return
        }
        let range = slingshot.calculateRange()
        if bottle.isHit(by: range) {
            print("Hit! Bottle was knocked down.")
            player.increaseScore()
        } else {
            print("Shot range:\(range) , bottle distance \(bottle.position)")
            print("Miss! Try again.")
        }
        player.displayScore()
    }
}
