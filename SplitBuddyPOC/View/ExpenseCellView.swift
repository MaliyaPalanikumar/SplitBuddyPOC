//
//  ExpenseCellView.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 09/10/25.
//

import SwiftUI

struct ExpenseCellView: View {
    var expenseDesc: String
    var body: some View {
        VStack(spacing: 20.0, content: {
            Text(verbatim: expenseDesc)
            
        })
    }
}
