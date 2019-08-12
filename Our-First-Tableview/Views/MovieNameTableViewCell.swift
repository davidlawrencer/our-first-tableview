//
//  MovieNameTableViewCell.swift
//  Our-First-Tableview
//
//  Created by David Rifkin on 8/9/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class MovieNameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("yawwwwn i am awake")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
