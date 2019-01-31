//
//  VodostokTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 01.12.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class VodostokTableViewCell: UITableViewCell {
    
    @IBOutlet weak var vodostokImage: UIImageView!
    @IBOutlet weak var vodostokDetailLabel: UILabel!
    @IBOutlet weak var vodostokNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        vodostokImage.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
