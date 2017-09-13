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

class Brad01 {
    init(){
        print("Brad01:init()")
    }
    func sayYa(){
        print("Brad01:sayYa()")
    }
}
class Brad02 {
    var p1:Brad01 = Brad01()
    lazy var p2:Brad01 = Brad01()
//    init(){
//        p2 = Brad01()
//    }
    func doP2(){
        p2.sayYa()
    }
}
struct Brad03 {
    var x = 1
    var y = 2
}
struct Brad04 {
    var v1 = Brad03()
    var v2: Brad03 {
        get {
            print("getter")
            let newx = v1.x + 10
            let newy = v1.y + 20
            return Brad03(x:newx, y:newy)   // 永遠為 Brad03
        }
        set {   // newValue 就是目前的 v2
            print("setter:\(newValue.x)")
            v1.x = newValue.x - 1
            v1.y = newValue.y - 2
        }
//        set(aBrad03) {   // aBrad03 就是目前的 v2
//            print("setter:\(aBrad03.x)")
//            v1.x = aBrad03.x - 1
//            v1.y = aBrad03.y - 2
//        }
    }
    var v3: Brad03 {
        get {
            return Brad03(x:3,y:4)
        }
        set{
            
        }
    }
}
struct MyScore {
    var x = 0, y = 0, z = 0
    var sum: Int {
            return x + y + z
    }
    var avg: Double {
            return Double(sum) / 3.0
    }
}

class Brad05 {
    var x:Int = 0 {
        willSet(newx){
            print("willSet:\(x)")
            print("willSet:\(newx)")
        }
        didSet {
            print("didSet")
        }
    }
}

class Brad06 {
    static var x:Int!
    static var x1 = 123
    static var x2:Int {
        return x1*100
    }
    // non-static => 物件級別 => member 成員
    var x1 = 321
    func m1(){
        print("A")
        x1 = 111
        Brad06.x1 = 333
        Brad06.m1()
    }
    static func m1() {
        print("B")
        x1 = 222
        // 無法修改物件級別的 member 或是呼叫
    }
    
    
}


// 以下玩類別物件的繼承關係 => 多型
// 父類別: Super, 子類別: Sub
class Super1 {
    private var a = 1
    func getA() -> Int {
        return a
    }
    var b = 123
}
class Super2 {
    var a = 0   // 物件級別
    static var counter = 0  // 類別級別
    init(){
        Super2.counter += 1
    }
    deinit {
        Super2.counter -= 1
        print("die")
    }
}

// Super1 為 Sub1 的 super class
class Sub1 : Super1 {
    var a = 10
    var c:Int?  // 可以是 nil
    override func getA() -> Int {
        super.getA()
        // ....
        
        return a
    }
}






