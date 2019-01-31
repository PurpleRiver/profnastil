//
//  ProductPageViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 15.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

protocol ProductPageViewControllerDelegate: class
{
    func setupPageController(numberOfPages : Int)
    func turnPageController(to index: Int)
}

class ProductPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    weak var productPageViewControllerDelegate: ProductPageViewControllerDelegate?
    var imagesOfProduct: [UIImage]?
    
    lazy var controllers: [UIViewController] = {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controllers = [UIViewController]()
        
        if let images = self.imagesOfProduct {
            for image in images {
                let productImageVC = storyboard.instantiateViewController(withIdentifier: "DescriptionImageViewController")
                controllers.append(productImageVC)
            }
        }
        self.productPageViewControllerDelegate?.setupPageController(numberOfPages: controllers.count)
        
        return controllers
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        delegate = self
        self.turnToPage(index: 0)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = controllers.index(of: viewController) {
            if index > 0 {
                return controllers[index - 1]
            }
        }
        
        return controllers.last
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = controllers.index(of: viewController) {
            if index < controllers.count - 1 {
                return controllers[index + 1]
            }
        }
        
        return controllers.first
    }
    
    func turnToPage (index: Int)
    {
        let controller = controllers[index]
        var direction = UIPageViewControllerNavigationDirection.forward
        
        if let currentVC = viewControllers?.first {
            let currentIndex = controllers.index(of: currentVC)!
            if currentIndex > index {
                direction = .reverse
            }
        }
        self.configureDisplaying(viewController: controller)
        
        setViewControllers([controller], direction: direction, animated: true)
    }

    func configureDisplaying(viewController: UIViewController) {
        for (index, vc) in controllers.enumerated() {
            if viewController === vc {
                if let productImageVC = viewController as? DescriptionImageViewController {
                    productImageVC.image = self.imagesOfProduct?[index]
                    self.productPageViewControllerDelegate?.turnPageController(to: index)
                }
            }
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
    {
        self.configureDisplaying(viewController: pendingViewControllers.first as! DescriptionImageViewController)
    }
    
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
    {
        if !completed {
            self.configureDisplaying(viewController: previousViewControllers.first as! DescriptionImageViewController)
        }
    }
}



