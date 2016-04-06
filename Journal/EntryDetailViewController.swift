//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Diego Aguirre on 4/6/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entry = entry {
            self.updateEntry(entry)
        }
    }
}

extension EntryDetailViewController {
    
    func updateEntry(entry: Entry) {
        titleTextField.text = entry.title
        bodyTextView.text = entry.body
    }
}

extension EntryDetailViewController {
    
    @IBAction func clearButtonPressed(sender: AnyObject) {
        titleTextField.text = ""
        bodyTextView.text = ""
    }
    
    @IBAction func saveButtonPressed(sender: AnyObject) {
        if titleTextField.text != "" && bodyTextView.text != "" {
            EntryController.sharedInstance.createEntry(titleTextField.text!, body: bodyTextView.text, date: nil)
            navigationController?.popViewControllerAnimated(true)
        }
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    
}
