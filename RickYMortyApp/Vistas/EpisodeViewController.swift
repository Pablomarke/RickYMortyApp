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
        
    }

    private func setupTableView() {
        tableEpisode.delegate = self
        tableEpisode.dataSource = self
    }
    private func registerNib() {
        let nib = UINib(nibName: "CustomViewCell", bundle: nil)
        tableEpisode.register(nib, forCellReuseIdentifier: "CustomViewCell")
    }

}

extension EpisodeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableEpisode.dequeueReusableCell(withIdentifier: "CustomViewCell", for: indexPath) as! CustomViewCell?
        
        return cell!
    }
    
    
}
