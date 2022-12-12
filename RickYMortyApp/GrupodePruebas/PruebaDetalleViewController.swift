//
//  PruebaDetalleViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 7/12/22.
//

import UIKit

class PruebaDetalleViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    var personaje: CharacterDetailProvidable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pruebas NO DEFINITIVO"
        view.backgroundColor = .blue
        
        labelOne.text = ""
        labelTwo.text = ""
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        syncModelWithView()
        
    }
    
    private func syncModelWithView() {
        
        NetWorkService.shared.getCharacterById(id: 2) { character in
            self.labelOne.text = character.nameDetailed
            self.labelTwo.text = character.gender
        } failure: { error in
            self.labelTwo.text = "error"
        }
    }
}
