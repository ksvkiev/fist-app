//
//  ViewController.swift
//  G56L4
//
//  Created by Сергей Косован on 25.08.17.
//  Copyright © 2017 Сергей Косован. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myCar = Car(bodyType: "Bus", color: .black, engineСapacity: 2.4, transmission: .automatic)

    @IBOutlet weak var isDriveLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var fuelLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()


        reloadUI()
    }

    func reloadUI() {
        isDriveLabel.text = "\(myCar.drive)"
        speedLabel.text = "\(myCar.speed)"
        fuelLabel.text = "\(myCar.fuel)"
    }


    @IBAction func driveAction(_ sender: UIButton) {
        myCar.changeSpeed()
        reloadUI()
    }

    @IBAction func gasStationAction(_ sender: UIButton) {
        myCar.onGasStation(1.0)
        reloadUI()
    }
}

