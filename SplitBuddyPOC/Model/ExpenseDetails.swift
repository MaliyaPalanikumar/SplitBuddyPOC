//
//  ExpenseDetails.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 07/10/25.
//

import SwiftData
import Foundation

@Model
final class TranscationDetails {
    var amount: Double
    var transactionDescription: String
    var transactionDate: Date
    var paidBy: Person?
    
    //@Relationship(deleteRule: .cascade, inverse: \Person.id) var candidate: [Person]?
    
    init(amount: Double, transactionDescription: String, transactionDate: Date, paidBy: Person?) {
        self.amount = amount
        self.transactionDescription = transactionDescription
        self.transactionDate = transactionDate
        self.paidBy = paidBy
        //self.candidate = candidate
    }
}

@Model
class Person {
    var id: Int
    var name: String
    @Relationship(deleteRule: .cascade, inverse: \TranscationDetails.paidBy) var transactions: [TranscationDetails]?
    var isOwes: Bool
    
    init(name: String, transactions: [TranscationDetails]?, isOwes: Bool) {
        self.id = Int.random(in: 1...1000)
        self.name = name
        self.transactions = transactions
        self.isOwes = isOwes
    }
}

