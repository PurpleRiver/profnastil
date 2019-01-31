//
//  DescriptionOfProductViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 15.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class DescriptionOfProductViewController: UIViewController {
    
 //   @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var borderView: ProductImageView!
    @IBOutlet weak var productImageView: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var productParameterLabel1: UILabel!
    @IBOutlet weak var productParameterLabel2: UILabel!
    @IBOutlet weak var productParameterLabel3: UILabel!
    @IBOutlet weak var productParameterLabel4: UILabel!
    @IBOutlet weak var productParameterLabel5: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var product: Product = Product()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        borderView.layer.borderWidth = 1
        borderView.layer.borderColor = UIColor.lightGray.cgColor
        productParameterLabel1.text = product.parameter1
        productParameterLabel2?.text = product.parameter2
        productParameterLabel3?.text = product.parameter3
        productParameterLabel4?.text = product.parameter4
        productParameterLabel5?.text = product.parameter5
        detailLabel.text = product.description
        priceLabel.text = product.price
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImagesPageViewController" {
            if let ProductPageViewController = segue.destination as? ProductPageViewController
            {
                ProductPageViewController.imagesOfProduct = product.image
                ProductPageViewController.productPageViewControllerDelegate = productImageView as? ProductPageViewControllerDelegate
            }
        }
    }
}
