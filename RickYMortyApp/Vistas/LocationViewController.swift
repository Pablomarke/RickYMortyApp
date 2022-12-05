//
//  LocationViewController.swift
//  RickYMortyApp
//
//  Created by Pablo Márquez Marín on 5/12/22.
//

import UIKit

class LocationViewController: UIViewController {
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var tableLocation: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Localizaciones"
        
        setupTableView()
        registerNib()
       
    }

    private func setupTableView() {
        tableLocation.delegate = self
        tableLocation.dataSource = self
    }
    private func registerNib() {
        let nib = UINib(nibName: "CustomViewCell", bundle: nil)
        tableLocation.register(nib, forCellReuseIdentifier: "CustomViewCell")
    }

}

extension LocationViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableLocation.dequeueReusableCell(withIdentifier: "CustomViewCell", for: indexPath) as! CustomViewCell?
        
        return cell!
    }
    
    
}
