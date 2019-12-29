//
//  locationVC.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/10/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit
import MapKit

class locationVC: UIViewController ,MKMapViewDelegate {

    @IBOutlet weak var mylocation: MKMapView!
    
    @IBAction func donebtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(36.855971, 42.921819)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        mylocation.setRegion(region, animated: true)
        
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "University"
        annotation.subtitle = "Law-Pol Library"
    
        mylocation.addAnnotation(annotation)

   
    }


}
