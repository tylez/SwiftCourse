//
//  InterfaceController.swift
//  HiWatch WatchKit Extension
//
//  Created by Alejandro Guerra Carbonell on 27/8/15.
//  Copyright (c) 2015 Alejandro Guerra Carbonell. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myLabel: WKInterfaceLabel!
    
    @IBAction func hiWatch() {
        myLabel.setText("Hi, Watch")
    }
    
    @IBAction func hiSwift() {
        myLabel.setText("Learning Swift")
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
