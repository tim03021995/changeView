//
//  UserDefault.swift
//  changeView
//
//  Created by Alvin Tseng on 2020/6/19.
//  Copyright © 2020 Alvin Tseng. All rights reserved.
//

import Foundation

extension ViewController{
    func saveOpenTimesInUserDefault(_ openTimes:Int){
        UserDefaults.standard.setValue(openTimes, forKeyPath: "OpenTimes")//儲存開啟次數
    }
    func loadOpenTimesInUserDefault(_ openTimes:Int) -> Int{
        UserDefaults.standard.integer(forKey: "OpenTimes")
        let dic = ["OpenTimes": 0]
        UserDefaults.standard.register(defaults: dic)
        return UserDefaults.standard.value(forKeyPath: "OpenTimes") as! Int
    }
}

extension RGBViewController{
    func loadColor() -> RGB{
        if let data = UserDefaults.standard.value(forKey:"color") as? Data {
            let rgb = try? PropertyListDecoder().decode(RGB.self, from: data)
            return rgb!
        }
        else{
            return RGB.init(red: 0, green: 0, blue: 0)
        }
    }
    func saveColor(_ rgb:RGB){
        UserDefaults.standard.set(try? PropertyListEncoder().encode(rgb), forKey:"color")
    }
}


