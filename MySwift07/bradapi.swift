//
//  bradapi.swift
//  MySwift07
//
//  Created by user22 on 2017/9/13.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

// Struct vs Class
struct Point {
    var x = 0
    var y = 0
}
struct Point2 {
    var x:Int
    var y:Int
}
struct Line {
    var p0:Point2
    var p1:Point2
    func len() -> Double {
        let xpow = (p0.x-p1.x)*(p0.x-p1.x)
        let ypow = (p0.y-p1.y)*(p0.y-p1.y)
        return sqrt(Double(xpow + ypow))
    }
}
