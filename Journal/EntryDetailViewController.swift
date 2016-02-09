//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Diego Aguirre on 2/8/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

//Now that the UITextFieldDelegate is connected in this file make sure to drag the delegate of the text fields that you want to conform to the delegate to the UIViewController in the storyBoard.
class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    var entry: Entry?

    @IBOutlet weak var titleTextLabel: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entry = entry {
            updateWithEntry(entry)
        }

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateWithEntry(entry:Entry) {
        self.titleTextLabel.text = entry.title
        self.bodyTextView.text = entry.bodyText
    }
    

    @IBAction func clearButtonPressed(sender: UIButton) {
        
        titleTextLabel.text = ""
        bodyTextView.text = ""
    }

    @IBAction func saveButtonPressed(sender: UIBarButtonItem) {
        
        if let entryTitle = titleTextLabel.text, bodyText = bodyTextView.text {
            EntryController.sharedInstance.addEntry(Entry(timeStamp: String(NSDate), title: entryTitle, bodyText: bodyText))
        }
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
