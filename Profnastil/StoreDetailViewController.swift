//
//  StoreDetailViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 29.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit
import MapKit

class StoreDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBAction func callingButton(_ sender: UIButtonX) {
        callNumber(phoneNumber: storeDetail.phoneNumberToCall!)
    }
    var storeDetail: Store = Store()
    let annotation = MKPointAnnotation()
    
    private func callNumber(phoneNumber:String) {
        
        if let phoneCallURL = URL(string: "tel://\(phoneNumber)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: storeDetail.latitude, longitude: storeDetail.longitude)
        
        // Set the zoom level
        let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 500, 500)
        self.mapView.setRegion(region, animated: false)
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "storeDetailCell", for: indexPath) as! StoreDetailTableViewCell
        
        cell.phoneLabel.text = storeDetail.phoneNumbers
        cell.emailLabel.text = storeDetail.email
        
        return cell
    }
}
