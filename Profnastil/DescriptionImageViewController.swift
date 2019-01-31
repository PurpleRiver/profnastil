//
//  DescriptionImageViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 15.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class DescriptionImageViewController: UIViewController {
    
    @IBOutlet weak var descriptionImage: UIImageView!
    
    var image: UIImage? {
        didSet {
            self.descriptionImage?.image = image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.descriptionImage.image = image
    }
}
