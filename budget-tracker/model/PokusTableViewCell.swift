//
//  PokusTableViewCell.swift
//  budget-tracker
//
//  Created by Jonáš Sasín on 10.03.2023.
//

import UIKit

class PokusTableViewCell: UITableViewCell {
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
