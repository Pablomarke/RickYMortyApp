//
//  PtuebaViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 2/11/22.
//

import UIKit
import Alamofire

class PruebaViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var getButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        labelOne.text = ""
    }
    
    @IBAction func getButtonAction(_ sender: Any) {
        
        NetWorkService.shared.getCharacter(id: 1) { (character) in
            self.labelOne.text = character.nameDetailed
        } failure: { error in
            self.labelOne.text = "ERRor?"
        }

}
}
