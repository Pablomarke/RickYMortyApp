//
//  CharacterDetailViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 26/12/22.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    var oneCharacter: Character?
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var charactersCollecion: UIStackView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var genderStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalle (provisional)"
        self.view.backgroundColor = .cyan
        
        syncDetail()
       
    }
    
    private func syncDetail() {
        NetWorkService.shared.getCharacterById(id: 2) { character in
            self.title = character.nameDetailed
            self.characterImage.sd_setImage(with: URL(string: character.image))
            self.speciesLabel.text = character.speciesDetailed
            self.statusLabel.text = character.statusDetailed
            self.genderStatus.text = character.genderDetailed
            
        } failure: { error in
            print(error.debugDescription)
        }

        
    }

}

