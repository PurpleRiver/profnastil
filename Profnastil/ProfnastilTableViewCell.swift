//
//  ProfnastilTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class ProfnastilTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profnastilDetailImage: UIImageView!
    @IBOutlet weak var profnastilDetailLabel: UILabel!
    @IBOutlet weak var profnastilNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profnastilDetailImage.layer.borderWidth = 1
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
