//
//  EntryController.swift
//  Journal
//
//  Created by Diego Aguirre on 2/8/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController{
    
    static let sharedInstance = EntryController()
    
    var entriesArray: [Entry]
    
    init() {
        self.entriesArray = []
    }
    
    func addEntry(entry: Entry) {
        entriesArray.append(entry)
    }
    
    func removeEntry(indexPath: NSIndexPath) {
        entriesArray.removeAtIndex(indexPath.row)
    }
    
    
    
}

