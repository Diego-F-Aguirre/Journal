//
//  Entry.swift
//  Journal
//
//  Created by Diego Aguirre on 2/8/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    var timeStamp: String
    var title: String
    var bodyText: String
    
    init(timeStamp: String, title: String, bodyText: String) {
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
    }
    
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}
