//
//  View.swift
//  Dicee-iOS13
//
//  Created by Gabriela Sillis on 24/09/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import UIKit


class View: UIView {
    lazy var backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = UIImage(named: "GreenBackground")

        return backgroundImage

    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension View: ViewProtocol {
    func configSubview() {
        addSubview(self.backgroundImage)
    }

    func configConstraint() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
