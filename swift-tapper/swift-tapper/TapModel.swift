//
//  TapModel.swift
//  swift-tapper
//
//  Created by Mahadevan, Ramesh on 7/13/14.
//  Copyright (c) 2014 Mahadevan, Ramesh. All rights reserved.
//

import Foundation
import UIKit

class TapModel{

    var textColor:UIColor=UIColor.redColor()
    
    var tapCount: Int = 0 {
        willSet(newTapCount){
            
        }
        didSet{
            self.textColor = UIColor.greenColor()
            println("Total Taps Before: \(oldValue).  Total Taps Now: \(tapCount)")
        }
    
    }
    
    
    
    func tap(callback:() -> Void){

        self.tapCount++;
        callback();
    }
    
    
    
}