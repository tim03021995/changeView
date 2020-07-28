//
//  ViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/16.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit
import SQLite3
class ViewController: UIViewController {
    // MARK: - IB
    // 資料庫檔案的路徑
    
    static var userDefault = UserDefaults()
    var openTimes = 0
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var timesOpenLabel: UILabel!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var buttonScroll: UIScrollView!
    @IBOutlet weak var button_1: UIButton!
    @IBOutlet weak var button_4: SetButton!
    @IBOutlet weak var button_5: SetButton!
    @IBOutlet weak var viewInScroll: UIView!
    @IBAction func aa(_ sender: Any){
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "page2") as? SecondViewController{
            vc.text = inputTextField.text //將直傳入第二個viewcontroller
            //present(vc, animated: true)
            show(vc, sender: nil)
        }
    }
    @IBAction func textFieldDidEndEditing(_ sender: UITextField) {
        UIView.animate(withDuration: 1){
            self.button_1.alpha = 1
            self.button_2.alpha = 1
            self.button_3.alpha = 1
            self.button_4.alpha = 1
            self.button_5.alpha = 1
        }
    }
    @IBAction func segueAction(for segue: UIStoryboardSegue) {
    }
    // MARK: - LifeCycle
    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        storyboard?.instantiateInitialViewController()
        // Do any additional setup after loading the view.
        button_1.alpha = 0
        button_2.alpha = 0
        button_3.alpha = 0
        button_4.alpha = 0
        button_5.alpha = 0
        // buttonScroll.contentSize.width = 1854
        buttonScroll.contentSize.height = UIScreen.main.bounds.height * 2
        buttonScroll.contentSize.width =
            UIScreen.main.bounds.width
        let singleTapGesture = UITapGestureRecognizer(
            target:self,
            action:#selector(ViewController.didTapInViewInScroll(recognizer:)))
        self.viewInScroll.addGestureRecognizer(singleTapGesture)
        openTimes = loadOpenTimesInUserDefault(openTimes)
        openTimes += 1
        timesOpenLabel.text = "這是第\(openTimes)次開啟軟體"
        saveOpenTimesInUserDefault(openTimes)
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.viewInScroll.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_vc_to_thirdvc" {
            let vc = segue.destination as! ThirdViewController
            vc.str = inputTextField.text
        }
        //performSegue(withIdentifier: , sender: Any?)
    }
    //    override func performSegue(withIdentifier identifier: String, sender: Any?) {
    //        <#code#>
    //    }
    @objc func didTapInViewInScroll(recognizer:UITapGestureRecognizer){
        print("單指連點一下時觸發")
        self.viewInScroll.endEditing(true)
    }
}

