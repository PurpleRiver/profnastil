//
//  StoreDetailTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 29.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class StoreDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
