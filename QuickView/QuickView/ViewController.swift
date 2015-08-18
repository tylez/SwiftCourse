//
//  ViewController.swift
//  QuickView
//
//  Created by Alejandro Guerra Carbonell on 18/8/15.
//  Copyright (c) 2015 Alejandro Guerra Carbonell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* Variable, conteins the text for our note. */
    @IBOutlet var myNote: UITextView!
    
    /* Function saveNote
        saveNote variable NSUser for save data.
        textNote variable with text from myNote
    */
    @IBAction func saveNote(sender: AnyObject) {
        let saveNote = NSUserDefaults()
        var textNote = myNote.text as String
        
        saveNote.setObject(textNote, forKey: "Note")
    }

    /* Function showNote
        showeNote variable NSUser for show data.
    */
    @IBAction func showNote(sender: AnyObject) {
        let showNote = NSUserDefaults()
        myNote.text = showNote.objectForKey("Note") as? String // show this key(Note) text.
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

