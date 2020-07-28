//
//  ThirdViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/16.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var str:String?
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let str = str{
            myLabel.text = "傳值測試" + str
        }
    }
}
