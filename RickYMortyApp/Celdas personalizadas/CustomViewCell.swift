//
//  CustomViewCell.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

public class CustomViewCell: UITableViewCell {

    @IBOutlet weak var customCellLabel: UILabel!
    @IBOutlet weak var customCellImage: UIImageView!
   
    public override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
