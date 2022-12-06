//
//  HomeViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 3/12/22.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeImage: UIImageView!
    @IBOutlet weak var stackViewButton: UIStackView!
    @IBOutlet weak var characterButton: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var episodeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeImage.image = UIImage(named: "RickYMorty")
        
        //Botones
        characterButton.tintColor = .blue
        characterButton.backgroundColor = .systemCyan
        
        locationButton.tintColor = .blue
        locationButton.backgroundColor = .systemCyan
        
        episodeButton.tintColor = .blue
        episodeButton.backgroundColor = .systemCyan
        
        searchButton.tintColor = .blue
        searchButton.backgroundColor = .systemCyan
        
        view.backgroundColor = .cyan
    }
    
    
    // MARK: Acciones de los botones
    
    @IBAction func actionCharacterButton(_ sender: Any) {
        let characterC = CharacterViewController()
        navigationController?.pushViewController(characterC,
                                                 animated: true)
   
    }
    @IBAction func actionLocationButton(_ sender: Any) {
        let locationC = LocationViewController()
        navigationController?.pushViewController(locationC,
                                                 animated: true)
      
    }
    @IBAction func episodeActionButton(_ sender: Any) {
        let episodeC = EpisodeViewController()
        navigationController?.pushViewController(episodeC,
                                                 animated: true)
     
    }
    @IBAction func searchActionButton(_ sender: Any) {
        let searchC = SearchViewController()
        navigationController?.pushViewController(searchC,
                                                 animated: true)
     
    }
    
}
