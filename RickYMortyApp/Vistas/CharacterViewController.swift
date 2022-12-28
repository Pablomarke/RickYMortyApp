//
//  CharacterViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class CharacterViewController: UIViewController {
    
    var charactersAllIn: [Character]?
    
    @IBOutlet weak var ViewCharacter: UIView!
    @IBOutlet weak var tableCharacter: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Personajes"
        
        tableCharacter.tintColor = .systemCyan
        
        registerNib()
        setupTableView()
        
        syncModelWithView()
        
    }
    
    private func setupTableView() {
        tableCharacter.delegate = self
        tableCharacter.dataSource = self
    }
    
    private func registerNib() {
        let nib = UINib(nibName: "AllCharacterCell",
                        bundle: nil)
        tableCharacter.register(nib,
                                forCellReuseIdentifier: "AllCharacterCell")
    }
    
    private func syncModelWithView() {
        NetWorkService.shared.getAllCharacters { rickYMortyCharacters in
            self.charactersAllIn = rickYMortyCharacters
            self.tableCharacter.backgroundColor = .cyan
            self.tableCharacter.reloadData()
           // self.animateTableView()
        } failure: { Error in
            print(Error.localizedDescription)
        }
    }
}

extension CharacterViewController: UITableViewDelegate,
                                   UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellTwo = tableCharacter.dequeueReusableCell(withIdentifier: "AllCharacterCell",
                                                               for: indexPath) as? AllCharacterCell else {
            return UITableViewCell()
        }
        cellTwo.config(character: charactersAllIn?[indexPath.row])
        return cellTwo
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return charactersAllIn?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //NetWorkService.shared.getCharacterById(id: indexPath.row + 1) { [self] character in
        
            let pruebasC = CharacterDetailViewController()
            self.navigationController?.pushViewController(pruebasC,
                                                          animated: true)
//            detailC.title = character.nameDetailed
//            detailC.characterImage.sd_setImage(with: URL(string: character.image))
//            detailC.speciesLabel.text = character.speciesDetailed
//            detailC.statusLabel.text = character.statusDetailed
            // detailC.genderStatus.text = character.genderDetailed
//
//            print(character.genderDetailed)
//        } failure: { error in
//            print(error.debugDescription)
//        }
    }
}

// MARK: Animaciones

extension CharacterViewController {

    private func animateTableView() {

        let cells = tableCharacter.visibleCells
        let heightTable = tableCharacter.bounds.height

        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0,
                                               y: heightTable)
        }

        var counter: Double = 0
        for cell in cells {
            UIView.animate(withDuration: 1,
                           delay: counter * 0.05,
                           usingSpringWithDamping: 2.8,
                           initialSpringVelocity: 2,
                           options: .autoreverse,
                           animations: {
                cell.transform = CGAffineTransform.identity
            },
                           completion: nil)
            counter += 1
        }
    }
}
