//
//  ViewController.swift
//  UIStepper
//
//  Created by Alejandro Guerra Carbonell on 27/9/15.
//  Copyright (c) 2015 Alejandro Guerra Carbonell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    //Necesitamos oulet y action para el UIStepper
    @IBOutlet var stepper: UIStepper!
    
    @IBAction func changeValue(sender: UIStepper) {
        
        myLabel.text = Int (sender.value).description
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Customizar el stepper.
        
        //Define un rango entre un maximo y un minimo y si lo repetimos, comienza de nuevo
        stepper.wraps = true
        stepper.autorepeat = true
    
        //Tanto wraps, como autorepeat van ligadas para que repita la secuencia.
        
        stepper.maximumValue = 10
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

