//
//  MovieTableViewCell.swift
//  Our-First-Tableview
//
//  Created by David Rifkin on 8/9/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var genreLabel: UILabel!
    override func awakeFromNib() {        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
