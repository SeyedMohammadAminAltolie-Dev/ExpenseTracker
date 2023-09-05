//
//  RecentTransactionList.swift
//  ExpenseTracker
//
//  Created by Ashkan Amin on 4/30/22.
//

import SwiftUI

struct RecentTransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack{
            HStack{
                //MARK: Header title
                Text("Recent Transactions")
                    .bold()
                Spacer()
                //MARk: Header Link
                NavigationLink {
                    TransactionList()
                } label: {
                    HStack(spacing: 4){
                        Text("See All")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color.text)
                }

            }
            .padding(.top)
            // MARK: Recent Transaction List
            ForEach(Array(transactionListVM.trasactions.prefix(5).enumerated()), id: \.element) { index, transaction in
                TransactionRow(transaction: transaction)
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct RecentTransactionList_Previews: PreviewProvider {
    static let transactionsListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.trasactions = transactionListPreviewData
        return transactionListVM
    }()
    static var previews: some View {
        Group {
            RecentTransactionList()
            RecentTransactionList()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transactionsListVM)
    }
}
