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
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        view.addSubview(label)
        self.label = label
        
        //Label2
        var label2 = UILabel()
        label2.frame = CGRectMake(200, 150, 60, 60)
        label2.text = "0"
        
        view.addSubview(label2)
        self.label2 = label2

        //Increment Button
        var button = UIButton()
        button.frame = CGRectMake(75, 200, 120, 60)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)

        //Decrement Button
        var decButton = UIButton()
        decButton.frame = CGRectMake(175, 200, 120, 60)
        decButton.setTitle("Decrement", forState: .Normal)
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decButton)
        
        decButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //background change Button
        var bgButton = UIButton()
        bgButton.frame = CGRectMake(75, 300, 200, 60)
        bgButton.setTitle("Change Background", forState: .Normal)
        bgButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(bgButton)
        
        bgButton.addTarget(self, action: "bgChange", forControlEvents: UIControlEvents.TouchUpInside)

    }
    
    func incrementCount() { //method like this is sometimes called a "callback" method because we interact with our view and callback to our controller
        self.count++
        self.label.text = "\(self.count)" //outlets are the opposit of callback, you change something in the controller and interact with the view
        self.label2.text = self.label.text
    }
    
    func decrementCount() {
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

