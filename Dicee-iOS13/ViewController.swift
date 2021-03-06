//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var screen: DiceScreen?

    override func loadView() {
        screen = DiceScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

extension ViewController: DiceScreenProtocol {
    func rollButtonTapped() {
        print("=========View Controller==========")
    }
}
