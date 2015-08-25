//
//  ViewController.swift
//  SocialAPI
//
//  Created by Alejandro Guerra Carbonell on 25/8/15.
//  Copyright (c) 2015 Alejandro Guerra Carbonell. All rights reserved.
//

import UIKit

//Framework Social to use social options.
import Social

class ViewController: UIViewController {
    
    @IBOutlet var twitterButton: UIButton!
    
    @IBOutlet var facebookButton: UIButton!
    
    
    //Twitter is confirugured in the device
    
    func confgTwitter(){
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter)){
            twitterButton.setTitle("Twitter is configured!!", forState: UIControlState.Normal)
        }else{
            twitterButton.setTitle("Twitter is not configured", forState: UIControlState.Normal)
        }
    }
    
    //Facebook is confirugured in the device

    func confgFacebook(){
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
            facebookButton.setTitle("Facebook is configured!!", forState: UIControlState.Normal)
        }else{
            facebookButton.setTitle("Facebook is not configured", forState: UIControlState.Normal)
        }
    }
    
    
    @IBAction func pressTwitterButton(sender: AnyObject) {
        //Se comprueba de nuevo si esta configurado.
        
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter)){
            
            var twitter : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            //New Clousure
            twitter.completionHandler = {
                result -> Void in
                
                var resultado = result as SLComposeViewControllerResult;
                
                
                switch(resultado.rawValue){
                    
                case SLComposeViewControllerResult.Cancelled.rawValue:
                    println("Cancel Action")
                    
                case SLComposeViewControllerResult.Done.rawValue:
                    println("Sending Tweet")
                    
                default: println("Your tweet has not sent")
                    
                }
                
                //Show twitter window
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            
            //Show twitter window
            presentViewController(twitter, animated: true, completion: nil)
            
            
            //Defaul tweet
            
            twitter.setInitialText("Learn how to use Twitter API")
        }
        
    }
    
    @IBAction func pressFacebookButton(sender: AnyObject) {
        //Se comprueba de nuevo si esta configurado de nuevo.
        
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
            
            var facebook : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            //New Clousure
            facebook.completionHandler = {
                result -> Void in
                
                var resultado = result as SLComposeViewControllerResult;
                
                switch(resultado.rawValue){
                case SLComposeViewControllerResult.Cancelled.rawValue:
                    println("Cancel Action")
                
                case SLComposeViewControllerResult.Done.rawValue:
                    println("Sending Post in Facebook")
                    
                default: println("Your post has not sent")
                }
                
                //Show Facebook Windows
                
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            presentViewController(facebook, animated:true, completion: nil)
            
            //Default post
            
            facebook.setInitialText("Learn how to use Facebook API")   
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        confgTwitter()
        
        confgFacebook()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

