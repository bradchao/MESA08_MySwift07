//
//  enumtest.swift
//  MySwift07
//
//  Created by user22 on 2017/9/13.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

// 列舉
func enumtest(){
    var dir:Direction = .STOP
    dir = .LEFT
    dir = .RIGHT
    switch dir {
    case .STOP:
        print("stop")
    case .UP:
        print("up")
    case .DOWN:
        print("stop")
    default:
        print("XX")
    }
    
    let area:Zipcode = .西屯區
    print(area.rawValue)
    
    var status1:IOStatus = .OK
    status1 = .NotFound(101, "111111")
    let status2:IOStatus = .NotFound(101, "22222")
    
    switch status2 {
    case .NotFound(101, let mesg):
        print("A:\(mesg)")
    case .NotFound(102, _):
        print("B")
    case .OK:
        print("C")
    default:
        print("X")
    }
    
    
    
}

// 定義列舉
enum Direction {
    // 定義列舉項目
    case UP, DOWN
    case LEFT, RIGHT
    case STOP
}

enum Zipcode:String {
    case 南屯區 = "111"
    case 北屯區 = "222"
    case 西屯區 = "333"
    case 中區 = "444"
}

enum IOStatus {
    case OK
    case NotFound(Int, String)
    case IOERROR(Int, String)
    case PermissionDeny
    case Unknown
}

