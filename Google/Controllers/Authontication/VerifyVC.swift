//
//  VerifyVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/8/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class VerifyVC: UIViewController {
    
    @IBOutlet weak var viewOfBackground: UIView!
   
    @IBOutlet weak var btnOpenCode: UIButton!
    @IBOutlet weak var txtPhonNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOfBackground.clipsToBounds = true
        viewOfBackground.layer.cornerRadius = 40

        
    }
    @IBAction func btnOpenCode(_ sender: Any) {
    }
    
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btnNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ForgetPassword", bundle: nil)
              let vc  = storyboard.instantiateViewController(withIdentifier: "PhoneVerificationVC")
              navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
