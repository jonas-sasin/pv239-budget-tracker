//
//  ManageCategoriesController.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 02.03.2023.
//

import UIKit

class ManageCategoriesController: UIViewController {
    
    var labelText: String?
    
    @IBOutlet weak var manageCategoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let labelText = labelText {
            manageCategoryLabel.text = labelText
        }
    }
}

