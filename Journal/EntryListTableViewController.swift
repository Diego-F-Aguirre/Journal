//
//  EntryListTableViewController.swift
//  Journal
//
//  Created by Diego Aguirre on 4/6/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryListTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }
}

extension EntryListTableViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EntryController.sharedInstance.entryArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("entryCell", forIndexPath: indexPath)
        let entry = EntryController.sharedInstance.entryArray[indexPath.row]
        cell.textLabel?.text = entry.title
        cell.detailTextLabel?.text = entry.body
        
        return cell
    }
}

extension EntryListTableViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}

extension EntryListTableViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toEntryDetail" {
            
            guard let entryDetailVC = segue.destinationViewController as? EntryDetailViewController,
                indexPath = tableView.indexPathForSelectedRow else { return }
            
            let entry = EntryController.sharedInstance.entryArray[indexPath.row]
            entryDetailVC.entry = entry
        }
    }
}

















