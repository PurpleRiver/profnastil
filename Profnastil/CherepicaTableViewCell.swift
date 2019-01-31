//
//  MetallocherepicaTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 13.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class CherepicaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cherepicaImage: UIImageView!
    @IBOutlet weak var cherepicaDescriptionLabel: UILabel!
    @IBOutlet weak var cherepicaNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cherepicaImage.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
