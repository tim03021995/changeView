//
//  Fifth2ViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/18.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class Fifth2ViewController: UIViewController {
    var  songName:String?
    var  songLength:String?
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var lyView: UITextView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var backgroundGlass: UIImageView!
    @IBOutlet weak var glassView: UIView!
    @IBOutlet weak var songLengthLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        glassView.frame.size.height = UIScreen.main.bounds.height * 2
        glassView.frame.size.width = UIScreen.main.bounds.width
        myScrollView.contentSize.height = UIScreen.main.bounds.height * 2
        myScrollView.contentSize.width = UIScreen.main.bounds.width
        lyView.layer.cornerRadius = 15
        backgroundGlass.layer.cornerRadius = 15
        myImage.layer.cornerRadius = 15
        songNameLabel.text = songName
        songLengthLabel.text = songLength
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
