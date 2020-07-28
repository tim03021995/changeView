//
//  RGBViewController.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/19.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import UIKit

class RGBViewController: UIViewController {
    var used = false
    var rgb = RGB(red: 0, green: 0, blue: 0)
    @IBOutlet weak var glass: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var text: UILabel!
    @IBAction func redSliderChangedValue(_ sender: UISlider) {
        let value = redSlider.value
        rgb.red = CGFloat(value)
        changeRGBValueView(rgb)
        changeBackGroundColor(rgb)
        saveColor(rgb)
    }
    @IBOutlet weak var valueOfGreenSlider: UILabel!
    @IBOutlet weak var valueOfRedSlider: UILabel!
    @IBOutlet weak var valueOfBlueSlider: UILabel!
    @IBAction func greenSliderChangedValue(_ sender: UISlider) {
        let value = greenSlider.value
        rgb.green = CGFloat(value)
        changeRGBValueView(rgb)
        changeBackGroundColor(rgb)
        saveColor(rgb)
    }
    @IBAction func blueSliderChangedValue(_ sender: UISlider) {
        let value = blueSlider.value
        rgb.blue = CGFloat(value)
        changeRGBValueView(rgb)
        changeBackGroundColor(rgb)
        saveColor(rgb)
    }
    @IBAction func redSliderTouchUp(_ sender: UISlider) {
        showtext()
    }
    @IBAction func greenSliderTouchup(_ sender: UISlider) {
        showtext()
    }
    @IBAction func blueSliderTouchUp(_ sender: UISlider) {
        showtext()
    }
    @IBAction func redSliderTouchUpOutside(_ sender: UISlider) {
        showtext()
    }
    @IBAction func greenSliderTouchUpOutside(_ sender: UISlider) {
        showtext()
    }
    @IBAction func blueSliderTouchUpOutside(_ sender: UISlider) {
        showtext()
    }
    override func viewDidLoad() {
        text.alpha = 0
        rgb = loadColor()
        changeRGBValueView(rgb)
        changeBackGroundColor(rgb)
        setSlider()
        glass.layer.cornerRadius = 15
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            UIView.animate(withDuration: 1) {
                self.text.alpha = 1
                self.used = true
            }
        }
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        if(used == true){
            UIView.animate(withDuration: 0.2) {
                self.text.alpha = 0
            }
        }
        super .viewDidLayoutSubviews()
    }
    func changeBackGroundColor(_ rgb:RGB){
        let r = rgb.red / 255
        let g = rgb.green / 255
        let b = rgb.blue / 255
        self.redSlider.minimumTrackTintColor = UIColor(displayP3Red: r, green: 0, blue: 0, alpha: 1)
        self.greenSlider.minimumTrackTintColor = UIColor(displayP3Red: 0, green: g, blue: 0, alpha: 1)
        self.blueSlider.minimumTrackTintColor = UIColor(displayP3Red: 0, green: 0, blue: b, alpha: 1)
        
        self.view.backgroundColor = UIColor(red: r, green: g, blue: b , alpha: 1)
    }
    func changeRGBValueView(_ rgb:RGB) {
        let r = Int(rgb.red)
        let g = Int(rgb.green)
        let b = Int(rgb.blue)
        self.valueOfRedSlider.text = "\(r)"
        self.valueOfGreenSlider.text = "\(g)"
        self.valueOfBlueSlider.text = "\(b)"
    }
    func setSlider(){
        redSlider.value = Float(rgb.red)
        redSlider.minimumTrackTintColor = .red
        greenSlider.value = Float(rgb.green)
        blueSlider.value = Float(rgb.blue)
    }
    func showtext() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            UIView.animate(withDuration: 1) {
                self.text.alpha = 1
                self.used = true
            }
        }
    }
}
