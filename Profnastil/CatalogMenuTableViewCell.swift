//
//  KrovlyaTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class CatalogMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var catalogImage: UIImageView!
    @IBOutlet weak var catalogDetailLabel: UILabel!
    @IBOutlet weak var catalogNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
