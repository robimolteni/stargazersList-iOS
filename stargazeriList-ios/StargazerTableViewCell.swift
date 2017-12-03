//
//  NewStargazerTableViewCell.swift
//  stargazeriList-ios
//
//  Created by robimolteni on 26/11/2017.
//  Copyright © 2017 myself. All rights reserved.
//

import UIKit

class StargazerTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!

    @IBOutlet weak var imgURL: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
