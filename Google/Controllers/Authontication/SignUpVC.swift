//
//  SignUpVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/7/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
class SignUpVC: UIViewController {

    @IBOutlet weak var ViewOfBackground: UIView!
    @IBOutlet weak var showPasswordBtn: UIButton!
    @IBOutlet weak var txtName: SkyFloatingLabelTextField!
    @IBOutlet weak var txtEmail: SkyFloatingLabelTextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            ViewOfBackground.clipsToBounds = true
            ViewOfBackground.layer.cornerRadius = 40
        }
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
      
    @IBAction func showPasswordBtn(_ sender: Any) {
        if (txtPassword.isSecureTextEntry == false) {
            txtPassword.isSecureTextEntry = true
        } else {
            txtPassword.isSecureTextEntry = false
      }
               
     }
    @IBAction func btnCreate(_ sender: Any) {
       
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let vc  = storyboard.instantiateViewController(withIdentifier: "HomeVC")
       navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    @IBAction func btnSignUpNewUser(_ sender: Any) {
    }
}
