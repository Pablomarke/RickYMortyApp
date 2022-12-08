//
//  CharacterViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class CharacterViewController: UIViewController {
    
    var charactersAllIn: [CharactersCollection]! = []
    
    @IBOutlet weak var ViewCharacter: UIView!
    @IBOutlet weak var tableCharacter: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Personajes"
        self.tableCharacter.backgroundColor = .cyan
        tableCharacter.tintColor = .systemCyan
        
        setupTableView()
        registerNib()
        animateTableView()
        
        syncModelWithView()
        
    }
    
    private func setupTableView() {
        tableCharacter.delegate = self
        tableCharacter.dataSource = self
    }
    
    private func registerNib() {
        let nib = UINib(nibName: "CustomViewCell", bundle: nil)
        tableCharacter.register(nib,
                                forCellReuseIdentifier: "CustomViewCell")
    }
    
    private func syncModelWithView() {
        NetWorkService.shared.getAllCharacters { charactersCollection in
            self.charactersAllIn = [charactersCollection]
        } failure: { Error in
            print(Error.localizedDescription)
        }

        }

    }


extension CharacterViewController: UITableViewDelegate,
                                   UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return charactersAllIn.count
        
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableCharacter.dequeueReusableCell(withIdentifier: "CustomViewCell",
                                                      for: indexPath) as! CustomViewCell?
        
        let characters = charactersAllIn[indexPath.item]
        
        cell?.customCellLabel?.text = "\(characters.count)"
        cell?.customCellImage.image = UIImage(named: "RickYMorty")
       
        return cell!
    }
}

// MARK: Animaciones

extension CharacterViewController {
    
    private func animateTableView() {
        tableCharacter.reloadData()
        
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
