//
//  blackBearButton.swift
//  Bear_ID
//
//  Created by Patrick Holmes on 5/31/19.
//  Copyright © 2019 Patrick Holmes. All rights reserved.
//

import UIKit

class BlackBearButton: UIButton {
    override func awakeFromNib() {
        
        layer.cornerRadius = 50
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.black.cgColor
    }
}
