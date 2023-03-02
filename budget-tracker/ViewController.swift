//
//  ViewController.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 24.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addIncomeButtonClick(_ sender: Any) {
        performSegue(withIdentifier: "income", sender: self)
    }
    
    @IBAction func addExpenseButtonClick(_ sender: Any) {
        performSegue(withIdentifier: "spending", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "income" {
            let destinationVC = segue.destination as! AddViewController
            destinationVC.labelText = "income"
        }
        if segue.identifier == "spending" {
            let destinationVC = segue.destination as! AddViewController
            destinationVC.labelText = "spending"
        }
    }
    
}

