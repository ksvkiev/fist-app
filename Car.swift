//
//  Car.swift
//  G56L4
//
//  Created by Сергей Косован on 25.08.17.
//  Copyright © 2017 Сергей Косован. All rights reserved.
//

import Foundation
import UIKit

class Car: NSObject {

    // MARK: Public Properties

    let bodyType: String
    let color: UIColor
    let engineСapacity: Double
    let transmission: Transmission
    var speed: Double
    var drive: Bool
    var fuel: Double

    // MARK: Private Properties



    // MARK: Initializer

    init(bodyType: String,
         color: UIColor,
         engineСapacity: Double,
         transmission: Transmission,
         fuel: Double = 0.0,
         speed: Double = 0.0,
         drive: Bool = true) {

        self.bodyType = bodyType
        self.color = color
        self.engineСapacity = engineСapacity
        self.transmission = transmission
        self.fuel = fuel
        self.speed = speed
        self.drive = drive
    }

    // MARK: - Public methods

    func onGasStation(_ gas: Double) {
        fuel += 10
        print("fuel - \(fuel)")
        speed = 0.0
        print("spead - \(speed)")
        setDrive(isDrive: false)
    }

    func changeSpeed() {
        speed += 10.0
        print("spead - \(speed)")
        if fuel != 0 {
            fuel -= 5
            print("fuel - \(fuel)")
        }
        setDrive(isDrive: true)
    }

    // MARK: - Private Methods
    
    private func setDrive(isDrive: Bool) {
        drive = isDrive
        print(drive)
    }

}













