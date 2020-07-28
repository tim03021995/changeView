//
//  ButtonSet.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/16.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class SetButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 2
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}
