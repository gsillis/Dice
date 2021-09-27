//
//  View.swift
//  Dicee-iOS13
//
//  Created by Gabriela Sillis on 24/09/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import UIKit


final class DiceScreen: UIView {

    private lazy var backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = UIImage(named: "GreenBackground")

        return backgroundImage
    }()

    private lazy var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "DiceeLogo")
        logo.contentMode = .scaleAspectFill

        return logo
    }()

    private lazy var diceOneImage: UIImageView = {
        let dice = UIImageView()
        dice.translatesAutoresizingMaskIntoConstraints = false
        dice.image = UIImage(named: "DiceOne")

        return dice
    }()

    private lazy var diceTwoImage: UIImageView = {
        let dice = UIImageView()
        dice.translatesAutoresizingMaskIntoConstraints = false
        dice.image = UIImage(named: "DiceTwo")

        return dice
    }()

    private lazy var rollButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Roll Dice", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.backgroundColor = UIColor.red.cgColor
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)

        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DiceScreen: ViewProtocol {

    func configSubview() {
        addSubview(backgroundImage)
        addSubview(logoImage)
        addSubview(diceOneImage)
        addSubview(diceTwoImage)
        addSubview(rollButton)
    }

    func configConstraint() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),

            logoImage.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 70),
            logoImage.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor),
            logoImage.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -100),
            logoImage.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 100),

            diceOneImage.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50),
            diceOneImage.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 50),

            diceTwoImage.topAnchor.constraint(equalTo: diceOneImage.topAnchor),
            diceTwoImage.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -50),

            rollButton.topAnchor.constraint(equalTo: diceOneImage.bottomAnchor, constant: 100),
            rollButton.centerXAnchor.constraint(equalTo: logoImage.centerXAnchor),
            rollButton.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 50),
            rollButton.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -50)

        ])
    }
}
