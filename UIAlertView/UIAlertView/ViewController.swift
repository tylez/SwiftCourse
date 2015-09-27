//
//  ViewController.swift
//  UIAlertView
//
//  Created by Alejandro Guerra Carbonell on 27/9/15.
//  Copyright (c) 2015 Alejandro Guerra Carbonell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert(sender: AnyObject) {
        let alertView = UIAlertView(title: "Alert", message: "Learn Swift and iOS8", delegate: nil, cancelButtonTitle: "OK")
        
        alertView.show()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

