//
//  FordViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/17.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class FordViewController: UIViewController {

    @IBOutlet weak var photoScrollView: UIScrollView!
    override func viewDidLoad() {
        photoScrollView.contentSize.width = 1200
        photoScrollView.contentSize.height = 200
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
