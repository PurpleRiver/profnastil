//
//  CharacteristicViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class CharacteristicViewController: UIViewController, UIScrollViewDelegate {
    @IBAction func priceButton(_ sender: UIButton) {
    }
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var viewForImage: UIView!
    @IBOutlet weak var productDetailName: UILabel!
    @IBOutlet weak var productView: UIView!
    @IBOutlet weak var productParameterLabel1: UILabel!
    @IBOutlet weak var productParameterLabel2: UILabel!
    @IBOutlet weak var productParameterLabel3: UILabel!
    @IBOutlet weak var productParameterLabel4: UILabel!
    @IBOutlet weak var productParameterLabel5: UILabel!
    @IBOutlet weak var borderView: UIView!
    
    var arrayOfImages = [UIImage]()
    var product: Product = Product()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfImages = [ #imageLiteral(resourceName: "proflistC21A"), #imageLiteral(resourceName: "proflistN75800"), #imageLiteral(resourceName: "proflistN10401190") ]
        scrollView.delegate = self
        productView.layer.shadowOpacity = 0.2
        borderView.layer.borderWidth = 1
        
        for image in 0..<arrayOfImages.count {
            let imageView = UIImageView(frame: CGRect.zero)
            imageView.image = arrayOfImages[image]

            scrollView.addSubview(imageView)
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame.size.width = self.view.bounds.width
            imageView.frame = CGRect(x: viewForImage.frame.width * CGFloat(image), y: 0, width: self.viewForImage.bounds.size.width, height: viewForImage.bounds.height)
            
            scrollView.contentSize = CGSize(width: viewForImage.bounds.width * CGFloat(image + 1), height: viewForImage.bounds.height)
            
        }

        pageControl.numberOfPages = arrayOfImages.count
        pageControl.currentPage = 0
        pageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControlEvents.valueChanged)
        
        productDetailName.text = product.name
        productParameterLabel1.text = product.parameter1
        productParameterLabel2?.text = product.parameter2
        productParameterLabel3?.text = product.parameter3
        productParameterLabel4?.text = product.parameter4
        productParameterLabel5?.text = product.parameter5
    }
    
    // MARK : TO CHANGE WHILE CLICKING ON PAGE CONTROL
    @objc func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x: x,y :0), animated: true)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
}
