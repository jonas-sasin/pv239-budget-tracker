//
//  AddViewController.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 24.02.2023.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var addWhatLabel: UILabel!
    
    var labelText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let labelText = labelText {
            addWhatLabel.text = labelText
        }
    }
}
