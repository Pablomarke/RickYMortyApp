//
//  SearchViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchImage: UIImageView!
    @IBOutlet weak var searchField: UITextField!
    
    @IBOutlet weak var characterButton: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var episodeButton: UIButton!
    
    @IBOutlet weak var searchImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Buscador"
        
        characterButton.titleLabel?.text = "Es un personaje!"
        characterButton.isHidden = true
        locationButton.titleLabel?.text = "Es un lugar!"
        locationButton.isHidden = true
        episodeButton.titleLabel?.text = "Es un episodio!"
        episodeButton.isHidden = true
        
        searchField.delegate = self
        searchField.text = "Escribe algo no?"
        searchField.backgroundColor = .systemCyan
        
        self.view.backgroundColor = .cyan
    }
    
    // MARK: Acciones botones
    
    @IBAction func actionCharacter(_ sender: Any) {
        
        self.title = "Buscando un personaje"
        
        characterButton.titleLabel?.text = " PERSONAJE "
        episodeButton.titleLabel?.text = " Episodio? "
        locationButton.titleLabel?.text = " Lugar? "
        
        characterButton.isHidden = false
        locationButton.isHidden = false
        episodeButton.isHidden = false
    }
    
    @IBAction func actionLocation(_ sender: Any) {
        
        self.title = "Buscando en localizaciones"
        characterButton.titleLabel?.text = " Personaje?"
        locationButton.titleLabel?.text = " LUGAR "
        episodeButton.titleLabel?.text = " Episodio?"
        characterButton.isHidden = false
        locationButton.isHidden = false
        episodeButton.isHidden = false
    }
    
    @IBAction func actionEpisode(_ sender: Any) {
        
        self.title = "Buscando en Episodios"
        characterButton.titleLabel?.text = " Personaje? "
        locationButton.titleLabel?.text = " Lugar? "
        episodeButton.titleLabel?.text = " EPISODIO "
        characterButton.isHidden = false
        locationButton.isHidden = false
        episodeButton.isHidden = false
    }
}

// MARK: Extensiones

extension SearchViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
   
        locationButton.isHidden = false
        episodeButton.isHidden = false
        characterButton.isHidden = false
        
        searchImage.image = UIImage(named: "Good")
        searchImageView.isHidden = true
    }
}
