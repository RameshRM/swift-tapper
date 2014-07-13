//
//  ViewController.swift
//  swift-tapper
//
//  Created by Mahadevan, Ramesh on 7/13/14.
//  Copyright (c) 2014 Mahadevan, Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let tapModel = TapModel();
    
    @IBOutlet var pageTitle:UILabel
    @IBOutlet var tapper:UIButton

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tap(){
        self.tapModel.tap(updateTapCount)
    }

    func updateTapCount()-> Void{
        self.pageTitle.text = "\(self.tapModel.tapCount) Taps";
    }
    
   


}

