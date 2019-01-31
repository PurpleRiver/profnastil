//
//  productImageView.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 21.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class ProductImageView: UIView {
  
    @IBOutlet weak var pageControl: UIPageControl!
}

extension ProductImageView: ProductPageViewControllerDelegate
{
    func setupPageController(numberOfPages: Int)
    {
        pageControl.numberOfPages = numberOfPages
    }
    
    func turnPageController(to index: Int)
    {
        pageControl.currentPage = index
    }
}
