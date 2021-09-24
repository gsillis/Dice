//
//  ViewProtocol.swift
//  Dicee-iOS13
//
//  Created by Gabriela Sillis on 24/09/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import UIKit

protocol ViewProtocol: UIView  {
    func configView()
    func configSubview()
    func configConstraint()
}

extension ViewProtocol {
    func configView() {
        configSubview()
        configConstraint()
    }
}
