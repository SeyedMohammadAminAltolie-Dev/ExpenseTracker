//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Ashkan Amin on 4/30/22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVm = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVm)
        }
    }
}
