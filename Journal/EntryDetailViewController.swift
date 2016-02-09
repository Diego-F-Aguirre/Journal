//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Diego Aguirre on 2/8/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    var entry: Entry?

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entry = entry {
            updateWithEntry(entry)
        }

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        
        return true
    }

    @IBAction func clearButtonPressed(sender: AnyObject) {
        titleTextField.text = ""
        bodyTextView.text = ""
    }
 
    @IBAction func saveButtonPressed(sender: AnyObject) {
        
        if let titleText = titleTextField.text,
               bodyText =  bodyTextView.text {
                
            EntryController.shareInstance.addEntry(Entry(timeStamp: String(NSDate()) , title: titleText, bodyText: bodyText))
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func updateWithEntry(entry: Entry) {
        self.titleTextField.text = entry.title
        self.bodyTextView.text = entry.bodyText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
