//
//  MovieTableViewController.swift
//  ImageSizeTest
//
//  Created by Scott on 2/9/21.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellHeight = MovieData.quotes[indexPath.row].height(withConstrainedWidth: 170, font: UIFont.systemFont(ofSize: 12))
        if cellHeight < 100 {
            return 125
        } else {
            return UITableView.automaticDimension
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MovieData.quotes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieTableViewCell
        
        let quote = MovieData.quotes[indexPath.row]
        let image = MovieData.imageNames[indexPath.row]

        cell.update(quote: quote, imageName: image)
        
        return cell
    }
}


