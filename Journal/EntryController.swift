//
//  EntryController.swift
//  Journal
//
//  Created by Diego Aguirre on 2/8/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static var shareInstance = EntryController()
    
    var entriesArray: [Entry]
    
    init() {
        self.entriesArray = []
    }
    
    
    func addEntry(entry: Entry) {
        self.entriesArray.append(entry)
    }
    
    func removeEntry(indexPath: NSIndexPath) {
        self.entriesArray.removeAtIndex(indexPath.row)
    }
    
    
    
}

