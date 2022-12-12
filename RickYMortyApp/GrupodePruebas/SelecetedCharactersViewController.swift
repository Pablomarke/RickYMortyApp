//
//  SelecetedCharactersViewControllersViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 10/12/22.
//

import UIKit

class SelecetedCharactersViewController: UIViewController {
    
    var character: Character!
    

    
    @IBOutlet weak var selectedTableCharacthers: UITableView!
    
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Personajes Principales"
        self.view.backgroundColor = .cyan
        
        selectedTableCharacthers.delegate = self
        selectedTableCharacthers.dataSource = self
        registerNib()
        loadTableCharacters()
        
        
    }
    private func registerNib(){
        let nib = UINib(nibName: "CustomViewCell", bundle: nil)
        selectedTableCharacthers.register(nib, forCellReuseIdentifier: "CustomViewCell")
    }
    
    private func loadTableCharacters() {
        NetWorkService.shared.getCharacterById(id: 1) { character in
            
            self.labelOne.text = character.name
            self.labelTwo.text = character.species
            self.imageView.image = UIImage(named: character.image)
            print("\(character.name)")
        } failure: { error in
            print(Error.self)
        }

    }
}

extension SelecetedCharactersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = selectedTableCharacthers.dequeueReusableCell(withIdentifier: "CustomViewCell", for: indexPath) as! CustomViewCell?
        
        func config(character: Character){
            cell?.customCellLabel.text = character.name
            cell?.customCellImage.image = UIImage(named: character.image)
        }
        
        return cell!
    }
    
}
