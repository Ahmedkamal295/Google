//
//  FilterVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/11/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class FilterVC: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var btnWebsite: UIButton!
    @IBOutlet weak var btnCall: UIButton!
    @IBOutlet weak var openingTimelbl: UILabel!
    @IBOutlet weak var citylbl: UILabel!
    @IBOutlet weak var mabLocation: MKMapView!
    @IBOutlet weak var tetAbout: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

       tetAbout.isEditable = false
    }
    
 
    @IBAction func btnWebsite(_ sender: Any) {
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }
    @IBAction func backAction(_ sender: Any) {
         navigationController?.popViewController(animated: true)
    }
}
