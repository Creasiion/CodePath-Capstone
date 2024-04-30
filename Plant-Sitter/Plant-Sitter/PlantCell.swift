//
//  PlantCell.swift
//  Plant-Sitter
//
//  Created by Imani Cage on 4/29/24.
//

import UIKit

class PlantCell: UITableViewCell {

    
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var commonNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
