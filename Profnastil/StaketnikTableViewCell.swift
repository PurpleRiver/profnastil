//
//  StaketnikTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 01.12.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class StaketnikTableViewCell: UITableViewCell {
    @IBOutlet weak var staketnikImage: UIImageView!
    @IBOutlet weak var staketnikNameLabel: UILabel!
    @IBOutlet weak var staketnikDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        staketnikImage.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
