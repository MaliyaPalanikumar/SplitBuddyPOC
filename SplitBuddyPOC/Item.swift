//
//  Item.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 06/10/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

class ViewModel {
    var description: String?
    var amount:String?
}
