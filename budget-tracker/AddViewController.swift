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
        
    
    @IBOutlet weak var dayPicker: UIPickerView!
    
    
    @IBOutlet weak var recurringSwitch: UISwitch!
    @IBOutlet weak var recurringSwitchLabel: UILabel!
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        dayPicker.isHidden = !dayPicker.isHidden
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dayPicker.isHidden = true
        recurringSwitch.setOn(false, animated: false)
        
        // Do any additional setup after loading the view.
        if let labelText = labelText {
            addWhatLabel.text = "Add " + labelText
            recurringSwitchLabel.text = "Recurring " + labelText
        }
    }
}
