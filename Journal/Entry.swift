//
//  Entry.swift
//  Journal
//
//  Created by Diego Aguirre on 4/6/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    let title: String
    let date: NSDate
    let body: String
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
        self.date = NSDate()
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return (lhs.title == rhs.title) && (lhs.body == rhs.body)
}