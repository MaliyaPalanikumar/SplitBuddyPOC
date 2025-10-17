//
//  ExpenseDetails.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 07/10/25.
//

import SwiftData
import Foundation

@Model
final class Transcation {
    var transactionDetails: TranscationDetails
    var paidBy: Person?
    var transactionId: Int
    init(transactionDetails: TranscationDetails, paidBy: Person? = nil) {
        self.transactionId = Int.random(in: 0...1000)
        self.transactionDetails = transactionDetails
        self.paidBy = paidBy
    }
}

@Model
final class TranscationDetails {
    var amount: Double
    var transactionDescription: String
    var transactionDate: Date
    var paidBy: Person?
    
    //@Relationship(deleteRule: .cascade, inverse: \Person.id) var candidate: [Person]?
    
    init(amount: Double, transactionDescription: String, transactionDate: Date) {
        self.amount = amount
        self.transactionDescription = transactionDescription
        self.transactionDate = transactionDate
        //self.paidBy = paidBy
        //self.candidate = candidate
    }
}

@Model
class Person {
    var id: Int
    var name: String
    var isOwes: Bool
    
    init(name: String, isOwes: Bool) {
        self.id = Int.random(in: 1...1000)
        self.name = name
        self.isOwes = isOwes
    }
}

