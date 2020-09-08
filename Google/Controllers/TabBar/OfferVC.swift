//
//  OfferVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/8/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class OfferVC: UIViewController {

    @IBOutlet weak var viewOfBackground: UIView!
    @IBOutlet weak var orderView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewOfBackground.clipsToBounds = true
        viewOfBackground.layer.cornerRadius = 40

        orderView.clipsToBounds = true
        orderView.layer.cornerRadius = 15
        
    }
    
    @IBAction func btnClose(_ sender: Any) {
         navigationController?.popViewController(animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
