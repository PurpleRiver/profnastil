//
//  ContactsViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 25.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellScalling: CGFloat = 0.65
    let cellScallingHeight: CGFloat = 0.8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
    
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScalling)
        let cellHeight = floor(screenSize.height * cellScallingHeight)
        
        let insetX = (view.bounds.width - cellWidth) / 2.0
        let insetY = (view.bounds.height - cellHeight) / 2.0
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView?.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
    }
}

extension ContactsViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "contactsCell", for: indexPath) as! ContactsCollectionViewCell
        return cell
    }
}
