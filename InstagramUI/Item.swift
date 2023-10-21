//
//  Item.swift
//  InstagramUI
//
//  Created by Temitayo on 17/10/2023.
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
