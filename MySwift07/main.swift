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
print("----------")
print(p0)

var p1 = Point2(x:12,y:34)

var line1 = Line(p0:Point2(x:0,y:0), p1:Point2(x:3,y:4))
print(line1.len())

var line2 = line1   // copy value, not reference
print(line2.len())
line2.p0.x = 120
line2.p0.y = 1000
print(line1.len())
print(line2.len())

var p2 = PointV3()
print(p2.x)

var p3 = PointV4(x: 10, y: 20)
print(p3.x)
var p4 = PointV4()
print(p4.x)

var p5 = p3
print("p3:x =\(p3.x), y = \(p3.y)")
print("p5:x =\(p5.x), y = \(p5.y)")
print("----")
p5.x = 100
p5.y = 200
print("p3:x =\(p3.x), y = \(p3.y)")
print("p5:x =\(p5.x), y = \(p5.y)")

var myBike = Bike(speed: 1)
var urBike = Bike(speed: 2)
myBike.upSpeed()
myBike.upSpeed()
print(myBike.getSpeed())
var hisBike = myBike.clone()
print(hisBike.getSpeed())
hisBike.upSpeed()
hisBike.upSpeed()
print(myBike.getSpeed())
print(hisBike.getSpeed())

var s1 = Student(name: "Brad", ch: 90, eng: 30, math: 20)
print(s1.sum())
print(s1.avg())
print(s1)

var b1 = Brad01()
var b2 = Brad02()
b2.doP2()
b2.doP2()

var b3 = Brad04()
print(b3.v1.x)
print(b3.v1.y)
print(b3.v2.x)
print(b3.v2.y)
print("------")
b3.v1.x = 123
print(b3.v1.x)
print(b3.v2.x)
print("------")
b3.v2.x = 100
print(b3.v2.x)
var s2 = MyScore(x:70,y:30, z:40)
print(s2.sum)
print(s2.avg)
s2.y = 100
print(s2.sum)
print(s2.avg)
var b5 = Brad05()
b5.x = 100
print(b5.x)

var b6 = Sub1()
print(b6.a)
print(b6.b)
print(b6.getA())

var b71:Super2? = Super2()
var b72:Super2? = Super2()
var b73 = Super2()
var b74 = Super2()
print(Super2.counter)
print(b71!.a)
b71 = nil
b72 = nil
print(Super2.counter)

var b8 = Brad06()
print(b8.x1)
print(Brad06.x1)
b8.m1()
print("-----")
print(b8.x1)
print(Brad06.x1)
Brad06.m1()
print("-----")
print(b8.x1)
print(Brad06.x1)
b8.m1()
print("-----")
print(b8.x1)
print(Brad06.x1)

var myId = "A123456789"
if TWId.isRightId(id: myId) {
    var id1 = TWId(id: myId)
}else{
   var id2 = TWId()
}







