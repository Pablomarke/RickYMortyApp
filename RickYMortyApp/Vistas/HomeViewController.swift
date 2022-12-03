//
//  HomeViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 3/12/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var stackViewButton: UIStackView!
    @IBOutlet weak var characterButton: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var episodeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    @IBAction func actionCharacterButton(_ sender: Any) {
    }
    @IBAction func actionLocationButton(_ sender: Any) {
    }
    @IBAction func episodeActionButton(_ sender: Any) {
    }
    @IBAction func searchActionButton(_ sender: Any) {
    }
    
}
