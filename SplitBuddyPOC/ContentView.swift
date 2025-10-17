//
//  ContentView.swift
//  SplitBuddyPOC
//
//  Created by Maliya Palanikumar on 06/10/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var transcation: [TranscationDetails]
    
    @State var isExpenseAdded: Bool = false
    @State var expenseAmount: String = ""
    @State var expenseDesc: String = ""
    @State var personDetails: String = ""
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(transcation) { transaction in
                    NavigationLink {
                        ExpenseCellView(expenseDetails: transaction)
                    } label: {
                        ExpenseCellView(expenseDetails: transaction)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        isExpenseAdded = true
                    }, label: {
                        Label("Add Expense", systemImage: "plus")
                    }).fullScreenCover(
                        isPresented: $isExpenseAdded,
                        onDismiss: {
                            var currentTranscation = TranscationDetails(amount: Double(expenseAmount) ?? 0.00,
                                                                        transactionDescription: expenseDesc, 
                                                                        transactionDate: Date())
                            var person = Person(name: personDetails, isOwes: false)
                            var transaction = Transcation(transactionDetails: currentTranscation, paidBy: person)
                            modelContext.insert(transaction)
                            expenseDesc = ""
                            expenseAmount = ""
                            personDetails = ""
                        }, content: {
                            ExpenseView(transactionDescription: $expenseDesc,
                                        amount: $expenseAmount, 
                                        personName: $personDetails)
                        })
                }
            }
        }
    detail: {
        Text("Select an item")
    }
    }
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(transcation[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
