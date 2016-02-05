//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Adam Aldous on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var bodyTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func clearButtonPressed(sender: UIButton) {
        titleTextField.text = ""
        bodyTextView.text = ""
    }
    
    @IBAction func saveButtonPressed(sender: UIBarButtonItem) {
        var entry: Entry?
        
        if (titleTextField.text != nil) && (bodyTextView.text != nil) {
            
            entry = Entry(timestamp: String(NSDate), title: titleTextField.text!, bodyText: bodyTextView.text!)
            if let unwrappedEntry = entry {
                EntryController.sharedInstance.addEntry(unwrappedEntry)
            }
            
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
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
