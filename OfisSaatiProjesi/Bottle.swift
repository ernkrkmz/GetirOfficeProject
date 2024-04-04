//
//  Bottle.swift
//  OfisSaatiProjesi
//
//  Created by Gizem Coşkun on 28.03.2024.
//

class Bottle {
    var position: Double
    var delta: Double
    var isStanding: Bool = true

    init(position: Double) {
        self.position = position
        self.delta = Double.random(in: 0.1...1)
    }

    func isHit(by range: Double) -> Bool {
        if (position - delta) <= range && range <= (position + delta) {
            isStanding = false
            return true
        }
        return false
    }
}
