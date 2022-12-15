//
//  AllCharacterCell.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 13/12/22.
//

import UIKit

class AllCharacterCell: UITableViewCell {
    
    @IBOutlet weak var characterView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    override func setSelected(_ selected: Bool,
                              animated: Bool) {
        super.setSelected(selected,
                          animated: animated)
    }
    
    func config(character: Character?){
      
        guard let character = character else {
            return
        }
        backgroundColor = .cyan
        nameLabel.text = character.nameDetailed
        speciesLabel.text = character.speciesDetailed
        statusLabel.text = character.statusDetailed
        characterView.sd_setImage(with: URL(string: character.image),
                                  placeholderImage: UIImage(named: "placeholder"))
    }
}
