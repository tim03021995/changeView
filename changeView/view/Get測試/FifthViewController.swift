//
//  FifthViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/18.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    var duration:Int = 0
    var songName:String?
    var  formattedDuration:String {
        get {
            let minutes = duration / 60
            let seconds = duration % 60
            return "\(minutes)分\(seconds)秒"
        }
    }
    // MARK: - IBAction
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var durationTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var backgroundGrass: UIImageView!
    @IBAction func durationInputDidEditingEnd(_ sender: UITextField) {
        let alphaVal = buttonShouldAppear(nameTextField.text!,durationTextField.text!)
        UIView.animate(withDuration: 1){
            self.button.alpha  = alphaVal
        }
        duration = Int(durationTextField.text!)!
    }
    @IBAction func nameInputDidEditingEnd(_ sender: UITextField) {
        let alphaVal = buttonShouldAppear(nameTextField.text!,durationTextField.text!)
        UIView.animate(withDuration: 1){
            self.button.alpha  = alphaVal
        }
    }
    @IBAction func tapButton(_ sender: UIButton) {
        let name  = nameTextField.text!
        let text = formattedDuration
        print("歌曲名稱：\(name) 長度：\(text)")
    }
    // MARK: - LifeCycle
    override func viewDidLoad() {
        backgroundGrass.layer.cornerRadius = 20 //玻璃圓邊
        button.alpha = 0 //輸入名字與音樂時間才出現按鈕
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_fifthvc_to_fifth2vc" {
            print(formattedDuration)
        let vc = segue.destination as! Fifth2ViewController
            vc.songName = nameTextField.text
            vc.songLength = formattedDuration
        }
        //performSegue(withIdentifier: , sender: Any?)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func buttonShouldAppear(_ name:String,_ duration:String) -> CGFloat{
        if  (name.isEmpty == false && duration.isEmpty == false) {
            return 1
        }else{
            return 0
        }
        
    }
}
