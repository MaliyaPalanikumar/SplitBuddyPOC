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
    @Binding var personName: String
    @Environment(\.dismiss) var dismiss
    
    var body : some View {
        VStack(spacing: 20.0) {
            Label {
                TextField("Enter the description",
                          text: $transactionDescription)
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 20, trailing: 20))
            } icon: {
                Image(systemName: "doc.plaintext")
                    .padding(EdgeInsets(top: 50, leading: 20, bottom: 20, trailing: 20))
            }
            Label {
                TextField("Enter the amount",
                          text: $amount)
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 20, trailing: 20))
            } icon: {
                Image(systemName: "indianrupeesign.square")
                    .padding(EdgeInsets(top: 50, leading: 20, bottom: 20, trailing: 20))
            }
            Label {
                TextField("Enter the Person", text: $personName)
            } icon: {
                Image(systemName: "person.circle.fill")
                    .padding(EdgeInsets(top: 50, leading: 20, bottom: 20, trailing: 20))
            }

        }
        Button("Done") {
            dismiss()
        }
    }
}
