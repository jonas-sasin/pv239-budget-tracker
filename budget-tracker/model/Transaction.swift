//
//  Transaction.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 03.03.2023.
//

import Foundation

class Transaction {
    
    let id: Int
    let description:String
    let amount: Double
    let isIncome: Bool
    let category: Category
    let recurring: RecurringRecord?
    let transactionDate: Date
    
    init(id: Int, description: String, amount: Double, isIncome: Bool, category: Category, recurring: RecurringRecord?, transactionDate: Date) {
        self.id = id
        self.description = description
        self.amount = amount
        self.isIncome = isIncome
        self.category = category
        self.recurring = recurring
        self.transactionDate = transactionDate
    }
}
