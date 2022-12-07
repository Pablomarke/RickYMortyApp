//
//  PtuebaViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 2/11/22.
//

import UIKit

class PruebaViewController: UIViewController {

    @IBOutlet weak var getButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        
    }
    @IBAction func getButtonAction(_ sender: Any) {
        NetWorkService.shared.getCharacter(id: 2)
    }
    

    

}
