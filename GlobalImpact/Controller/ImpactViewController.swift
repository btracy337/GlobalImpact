//
//  ViewController.swift
//  GlobalImpact
//
//  Created by Tracy, Bryan on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var animateButton: UIButton!
    @IBOutlet weak var impactImage: UIImageView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func animateClick(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: -28.6657, longitude: 30.5296)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.5, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }



}
extension MKMapView{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10,
                          options: UIView.AnimationOptions.curveEaseIn, animations:
            {self.setRegion(zoomRegion, animated: true) }, completion: nil)
        
    }
    
    
}


