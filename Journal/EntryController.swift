//
//  EntryController.swift
//  Journal
//
//  Created by Diego Aguirre on 4/6/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedInstance = EntryController()
    
    var entryArray: [Entry] = [Entry(title: "fist note", body: "dafljfa;ljfal;jfal;jf"), Entry(title: "second Note", body: "ldfj;aldjf;ajf;a jfa j;fal"), Entry(title: "third note", body: "djlfa;")]

    
    func createEntry(title: String, body: String, date: NSDate?) {
        let newEntry = Entry(title: title, body: body)
        entryArray.append(newEntry)
    }
    
    func removeEntry(entry: Entry) {
        
    }
    
    func updateEntry(entry: Entry) {
        
    }
}