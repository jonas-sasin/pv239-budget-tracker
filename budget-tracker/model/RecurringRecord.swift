//
//  RecurringRecord.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 03.03.2023.
//

import Foundation

class RecurringRecord {
    
    let id: Int
    let dayInMonth: Int
    let name: String
    
    init(id: Int, dayInMonth: Int, name: String) {
        self.id = id
        self.dayInMonth = dayInMonth
        self.name = name
    }
    
}
