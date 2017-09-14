//
//  MyAPI.swift
//  MySwift07
//
//  Created by user22 on 2017/9/14.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

class BradString {
    static func indexOf(source:String, find:Character) -> Int {
        var ret = -1, i = 0
        for c in source.characters {
            if c == find {
                ret = i
                break
            }
            i += 1
        }
        return ret
    }
    
    static func subString(source:String, from:Int, to:Int) -> String {
        let cs = Array(source.characters);
        var ret = ""
        for i in from..<to {
            ret += String(cs[i])
        }
        return ret
    }
}
