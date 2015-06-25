//
//  ViewController.swift
//  ClickCounter
//
//  Created by John Ceniza on 6/25/15.
//  Copyright (c) 2015 AppDeco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label:UILabel!
    @IBOutlet var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction  func incrementCount() { //method like this is sometimes called a "callback" method because we interact with our view and callback to our controller
        self.count++
        self.label.text = "\(self.count)" //outlets are the opposit of callback, you change something in the controller and interact with the view
        self.label2.text = self.label.text
    }
    
    @IBAction func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = self.label.text
    }
    
    func bgChange() {
        if (self.view.backgroundColor == UIColor.whiteColor()) {
            self.view.backgroundColor = UIColor.darkGrayColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }
}

