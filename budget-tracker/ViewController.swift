//
//  ViewController.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 24.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.allowsMultipleSelectionDuringEditing = false
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



extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! PokusTableViewCell
        
        cell.testLabel.text = "label \(indexPath.row)"
        if (indexPath.row > 1) {
            cell.testButton.backgroundColor = UIColor.red
        } else {
            cell.testButton.backgroundColor = UIColor.green
        }
        
        return cell
    }
    
    
}
