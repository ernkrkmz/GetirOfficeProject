//
//  Slingshot.swift
//  OfisSaatiProjesi
//
//  Created by Gizem Coşkun on 28.03.2024.
//

import Foundation

class Slingshot {
    var angle: Double
    var velocity: Double
    
    init(angle: Double, velocity: Double) {
        self.angle = angle
        self.velocity = velocity
    }
    
    func calculateRange() -> Double {
        let g: Double = 10.0
        let convertToRadian = angle.convertToRadian()
        let range = (velocity * velocity * sin(convertToRadian)) / g
        return range
    }
}

extension Double {
    func convertToRadian() -> Double {
        return (2 * self * Double.pi / 180)
    }
}
