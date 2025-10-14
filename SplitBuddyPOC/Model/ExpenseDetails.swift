//
//  ExpenseDetails.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 07/10/25.
//

import SwiftData

@Model
final class TranscationDetails {
    var amount: Double
    var transactionDescription: String
    var paidBy: Person?
    
    init(amount: Double, transactionDescription: String, paidBy: Person?) {
        self.amount = amount
        self.transactionDescription = transactionDescription
        self.paidBy = paidBy
    }
}

@Model
class Person {
    var name: String
    var amount: Double
    var isOwes: Bool
    
    init(name: String, amount: Double, isOwes: Bool) {
        self.name = name
        self.amount = amount
        self.isOwes = isOwes
    }
}

@Model
final class Transcation {
    @Attribute(.unique) var transactionName: String
    @Relationship(deleteRule: .cascade, inverse: \TranscationDetails.id) var transaction: [TranscationDetails]
    
    init(transactionName: String, transaction: [TranscationDetails]) {
        self.transactionName = transactionName
        self.transaction = transaction
    }
}
