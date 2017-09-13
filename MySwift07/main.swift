//
//  main.swift
//  MySwift07
//
//  Created by user22 on 2017/9/13.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

print("Hello, World!")
enumtest()

var p0 = Point()
print(p0.x)
p0.x = 12
print(p0.x)

var p1 = Point2(x:12,y:34)

var line1 = Line(p0:Point2(x:0,y:0), p1:Point2(x:3,y:4))
print(line1.len())








