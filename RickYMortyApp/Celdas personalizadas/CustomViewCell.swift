//
//  CustomViewCell.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit
import SDWebImage

public class CustomViewCell: UITableViewCell {

    @IBOutlet weak var customCellLabel: UILabel!
    @IBOutlet weak var customCellImage: UIImageView!
   
    public override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    public override func setSelected(_ selected: Bool,
                                     animated: Bool) {
        super.setSelected(selected,
                          animated: animated)

    }
    
    func configCellForCharacter(character: Character?){
        guard let character = character else {
            return
        }

        customCellLabel.text = character.name
        customCellImage.sd_setImage(with: URL(string: character.image), placeholderImage: UIImage(named: "good"))
    }
}
