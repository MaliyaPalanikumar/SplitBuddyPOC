//
//  ExpenseView.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 09/10/25.
//

import SwiftUI

struct ExpenseView: View {
    @Binding var transactionDescription: String
    @Binding var amount: String
    @Environment(\.dismiss) var dismiss
    var body : some View {
        VStack(spacing: 20.0) {
            Label {
                TextField("Enter the description",
                          text: $transactionDescription)
            } icon: {
                Image(systemName: "doc.plaintext")
            }
            Label {
                TextField("Enter the amount",
                          text: $amount)
            } icon: {
                Image(systemName: "indianrupeesign.square")
            }
        }
        Button("Done") {
            dismiss()
        }
    }
}
