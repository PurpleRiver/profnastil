//
//  KrovlyaTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class KrovlyaTableViewCell: UITableViewCell {

    @IBOutlet weak var krovlyaImage: UIImageView!
    
    @IBOutlet weak var krovlyaDetailLabel: UILabel!
    
    @IBOutlet weak var krovlyaNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
