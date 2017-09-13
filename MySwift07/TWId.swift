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
        
        return true
    }
    
}
