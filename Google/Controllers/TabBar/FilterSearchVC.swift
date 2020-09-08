//
//  FilterSearchVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/8/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class FilterSearchVC: UIViewController {
    
    @IBOutlet weak var viewOfBackground: UIView!
   
    @IBOutlet weak var txtCategory: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtType: UITextField!
    @IBOutlet weak var txtArea: UITextField!
    @IBOutlet weak var txtInstagramAccount: UITextField!
    
    @IBOutlet weak var btnSaerch: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOfBackground.clipsToBounds = true
        viewOfBackground.layer.cornerRadius = 40
        
    }
    
    @IBAction func btnSearch(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Search", bundle: nil)
           let vc  = storyboard.instantiateViewController(withIdentifier: "FilterVC")
           navigationController?.pushViewController(vc, animated: true)
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
