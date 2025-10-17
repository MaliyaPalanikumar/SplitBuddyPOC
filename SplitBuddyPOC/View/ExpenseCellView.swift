//
//  ExpenseCellView.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 09/10/25.
//

import SwiftUI

struct ExpenseCellView: View {
    var expenseDetails: TranscationDetails
    var expenseDateString: String {
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            dateFormatter.dateStyle = .short
        return dateFormatter.string(from: expenseDetails.transactionDate)
    }
    var body: some View {
        HStack {
            Text(verbatim:expenseDateString)
            Image(systemName: "paperplane.fill")
            VStack(spacing: 20.0, content: {
                Text(verbatim: expenseDetails.transactionDescription)
                Text(verbatim: String(expenseDetails.amount))
            })
        }
    }
}
