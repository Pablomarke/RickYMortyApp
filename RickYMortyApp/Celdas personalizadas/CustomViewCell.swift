//
//  CustomViewCell.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class CustomViewCell: UITableViewCell {

    @IBOutlet weak var customCellLabel: UILabel!
    @IBOutlet weak var customCellImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
