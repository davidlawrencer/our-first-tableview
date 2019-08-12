//
//  ViewController.swift
//  Our-First-Tableview
//
//  Created by David Rifkin on 8/8/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data = MovieData.sortedMovies
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = data[indexPath.row]
        if indexPath.row % 2 == 0 {
            if let cell = tableViewOut.dequeueReusableCell(withIdentifier: "MovieTVC", for: indexPath) as? MovieTableViewCell {
                cell.genreLabel?.text = movie.genre
                return cell
            }
        } else {
            if let cell = tableViewOut.dequeueReusableCell(withIdentifier: "MovieNameTableViewCell", for: indexPath) as? MovieNameTableViewCell {
                cell.nameLabel?.text = movie.name
                return cell
            }
        }
        let cell2 = UITableViewCell()
        cell2.textLabel?.text = movie.name
        cell2.detailTextLabel?.text = movie.genre
        return cell2
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    @IBOutlet weak var tableViewOut: UITableView!
    override func viewDidLoad(){
        super.viewDidLoad()
    tableViewOut.dataSource = self
    tableViewOut.delegate = self
        // Do any additional setup after loading the view.
    }


}

