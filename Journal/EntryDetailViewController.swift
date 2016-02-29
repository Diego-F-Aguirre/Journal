//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Diego Aguirre on 2/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var entry: Entry?

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var bodyText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            bodyText.resignFirstResponder()
            return false
        }
        return true
    }
    
    func updateWith(entry: Entry) {
        self.entry = entry
        
        textField.text = entry.title
        bodyText.text = entry.bodyText
    }

 
    @IBAction func clearButtonPressed(sender: AnyObject) {
        textField.text = ""
        bodyText.text = ""
        
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        
        if let entry = entry {
            entry.title = textField.text!
            entry.bodyText = bodyText.text
            entry.timeStamp = NSDate()
            
        } else {
            
            let newEntry = Entry(timeStamp: NSDate(), title: self.textField.text!, bodyText: self.bodyText.text)
            EntryController.sharedInstance.addEntry(newEntry)
            self.entry = newEntry
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
 

}
