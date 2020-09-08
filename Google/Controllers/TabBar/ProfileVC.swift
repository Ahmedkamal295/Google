//
//  ProfileVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/19/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
 navigationController?.isNavigationBarHidden = true
        
    }
    

    @IBAction func btnEditProfile(_ sender: Any) {
        
    }
    
    @IBAction func btnback(_ sender: Any) {
        dismiss(animated: false, completion: nil)
//       navigationController?.popViewController(animated: true)
              
    }
}
