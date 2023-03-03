//
//  Category.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 03.03.2023.
//
import Foundation

class Category {
    let id: Int
    let name: String
    let isIncome: Bool
    
    init(id: Int, name: String, isIncome: Bool) {
        self.id = id
        self.name = name
        self.isIncome = isIncome
    }
}
