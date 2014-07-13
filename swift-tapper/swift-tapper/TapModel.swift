//
//  TapModel.swift
//  swift-tapper
//
//  Created by Mahadevan, Ramesh on 7/13/14.
//  Copyright (c) 2014 Mahadevan, Ramesh. All rights reserved.
//

import Foundation

class TapModel{
    var tapCount: Int = 0 {
        willSet(newTapCount){
            
        }
        didSet{
            println("Total Taps Before: \(oldValue).  Total Taps Now: \(tapCount)")
        }
    }
    
    func tap(callback:() -> Void){
        self.tapCount++;
        callback();
    }
    
    
}