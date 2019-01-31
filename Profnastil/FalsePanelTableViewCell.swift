//
//  PanelTableViewCell.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 30.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class PanelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var falsePanelNameLabel: UILabel!
    @IBOutlet weak var falsePanelDetailLabel: UILabel!
    @IBOutlet weak var falsePanelDetailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        falsePanelDetailImage.layer.borderWidth = 1
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
