//
//  SecondViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/16.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "傳值測試：\(text!)"
    }
    @IBOutlet weak var textLabel: UILabel!
}
