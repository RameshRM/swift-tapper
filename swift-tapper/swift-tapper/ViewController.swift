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
        self.pageTitle.alpha = 0
        pageTitle.textColor = tapModel.textColor
        super.viewDidLoad()
    }

    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.5, animations: {
            self.pageTitle.alpha = 1.0
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tap(){
        self.pageTitle.alpha=0.2
        self.tapModel.tap(updateTapCount)
    }

    func updateTapCount()-> Void{
        self.pageTitle.text = "\(self.tapModel.tapCount) Taps";
        self.pageTitle.textColor = tapModel.textColor

        UIView.animateWithDuration(1, animations: {
                self.pageTitle.alpha=1.0
            println("Do Nothing")
        })
    }

    func doSomeCallback(param:Int)-> Void{
        println("Passed param\(param)")
    }

}

