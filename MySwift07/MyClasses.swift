//
//  MyClasses.swift
//  MySwift07
//
//  Created by user22 on 2017/9/13.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

class PointV3 {
    var x = 0
    var y = 0
}

class PointV4 {
    var x:Int
    var y:Int
    init(){
        x = 1
        y = 2
    }
    // 建構式 constructor
    init(x:Int, y:Int){
        self.x = x
        self.y = y
    }
}

class Bike {
    // 屬性
    // Bike has-a speed
    private var speed:Double
    init(speed:Double){
        self.speed = speed
    }
    func upSpeed(){
        speed = speed < 1 ? 1 : speed * 1.2
    }
    
    func dpwnSpeed(){
        speed = speed < 1 ? 0 : speed * 0.7
    }
    
    func getSpeed() -> Double {
        return speed
    }
    
    func clone() -> Bike {
        return Bike(speed: speed)
    }
}

class Student {
    private var name:String
    private var ch:Int
    private var eng:Int
    private var math:Int
    init(name:String,ch:Int, eng:Int, math:Int){
        self.name = name
        self.ch = ch
        self.eng = eng
        self.math = math
    }
    func sum() -> Int {
        return ch + eng + math
    }
    func avg() -> Double {
        return Double(sum()) / 3
    }
    
    
    
}
