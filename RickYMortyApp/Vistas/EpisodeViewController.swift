//
//  EpisodeViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class EpisodeViewController: UIViewController {
    
    @IBOutlet weak var episodeView: UIView!
    @IBOutlet weak var tableEpisode: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Episodios"
        
        setupTableView()
        registerNib()
        
        animateTableView()
    }
    
    private func setupTableView() {
        tableEpisode.delegate = self
        tableEpisode.dataSource = self
    }
    private func registerNib() {
        let nib = UINib(nibName: "CustomViewCell", bundle: nil)
        tableEpisode.register(nib,
                              forCellReuseIdentifier: "CustomViewCell")
    }
    
}

extension EpisodeViewController: UITableViewDelegate,
                                 UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableEpisode.dequeueReusableCell(withIdentifier: "CustomViewCell",
                                                    for: indexPath) as! CustomViewCell?
        
        return cell!
    }
}

extension EpisodeViewController {
    private func animateTableView() {
        tableEpisode.reloadData()
        let cells = tableEpisode.visibleCells
        let heightTable = tableEpisode.bounds.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0,
                                               y: heightTable)
        }
        
        var counter: Double = 0
        
        for cell in cells {
            UIView.animate(withDuration: 2,
                           delay: counter * 0.05,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 6,
                           options: .transitionFlipFromRight,
                           animations: {
                cell.transform = CGAffineTransform.identity
            },
                           completion: nil)
            counter += 1
        }
    }
}
