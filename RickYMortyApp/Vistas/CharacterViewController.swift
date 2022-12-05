//
//  CharacterViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class CharacterViewController: UIViewController {
    
    @IBOutlet weak var ViewCharacter: UIView!
    @IBOutlet weak var tableCharacter: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Personajes"
        self.tableCharacter.backgroundColor = .cyan
        tableCharacter.tintColor = .systemCyan
        
        NetWorkService.shared.getAllCharacters()
        
        setupTableView()
        registerNib()
        
        animateTableView()
        
    }
    
    private func setupTableView() {
        tableCharacter.delegate = self
        tableCharacter.dataSource = self
    }
    
    private func registerNib() {
        let nib = UINib(nibName: "CustomViewCell", bundle: nil)
        tableCharacter.register(nib, forCellReuseIdentifier: "CustomViewCell")
    }
    
}
extension CharacterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableCharacter.dequeueReusableCell(withIdentifier: "CustomViewCell", for: indexPath) as! CustomViewCell?
        
        
        return cell!
    }
}
extension CharacterViewController {
    private func animateTableView() {
        tableCharacter.reloadData()
        let cells = tableCharacter.visibleCells
        let heightTable = tableCharacter.bounds.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: heightTable)
        }
        
        var counter: Double = 0
        
        for cell in cells {
            UIView.animate(withDuration: 2,
                           delay: counter * 0.05,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                cell.transform = CGAffineTransform.identity
            },
                           completion: nil)
            counter += 1
        }
    }
}
