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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Buscador"
        searchField.backgroundColor = .systemCyan
        self.view.backgroundColor = .cyan
    }
}
