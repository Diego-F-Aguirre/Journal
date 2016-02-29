//
//  Entry.swift
//  Journal
//
//  Created by Diego Aguirre on 2/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    var timeStamp: NSDate
    var title: String
    var bodyText: String
    
    init(timeStamp: NSDate, title: String, bodyText: String){
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
    }
}

func ==(lhs:Entry, rhs: Entry) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}