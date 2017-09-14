//
//  TWId.swift
//  MySwift07
//
//  Created by user22 on 2017/9/13.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

class TWId {
    private var id:String
    init(){
        
        id = "A123456789"
    }
    init(area:String){
        
        id = "A123456789"
    }
    init(gender:Bool){
        id = "A123456789"
    }
    init(area:String, gender:Bool){
        
        id = "A123456789"
    }
    init(id:String){
        
        self.id = id
    }
    func getArea() -> String {
        
        return "台中市"
    }
    func getGender() -> Bool {
        
        return true
    }
    static func isRightId(id:String) -> Bool {
        var isRight = false;
        if let _ = id.range(of: "^[A-Z][12][0-9]{8}$", options: .regularExpression){
            let letters = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
            
            let cs = Array(id.characters)   // Array<Character>
            
            let c1 = cs[0]   // String
            let n12 = BradString.indexOf(source: letters, find: c1) + 10
            let n1 = n12 / 10
            let n2 = n12 % 10 * 9
            let n3:Int? = Int(String(cs[1]))! * 8
            let n4:Int? = Int(String(cs[2]))! * 7
            let n5:Int? = Int(String(cs[3]))! * 6
            let n6:Int? = Int(String(cs[4]))! * 5
            let n7:Int? = Int(String(cs[5]))! * 4
            let n8:Int? = Int(String(cs[6]))! * 3
            let n9:Int? = Int(String(cs[7]))! * 2
            let n10:Int? = Int(String(cs[8]))! * 1
            let n11:Int? = Int(String(cs[9]))! * 1
            
            let sum = n1 + n2 + n3! + n4! + n5! + n6! + n7! + n8! + n9! + n10! + n11!
            
            isRight = sum % 10 == 0
        }
        
        return isRight
    }
    
}
