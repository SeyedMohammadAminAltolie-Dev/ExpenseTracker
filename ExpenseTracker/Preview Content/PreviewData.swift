//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Ashkan Amin on 4/30/22.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "04/30/02022", institution: "Amin", account: "Ashkan Amin", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "software", isPending: false,isTransfer: false, isExpense: true, isEdited: false)
var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
