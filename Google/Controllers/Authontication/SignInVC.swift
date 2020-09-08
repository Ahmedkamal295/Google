//
//  SignInVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/7/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit
import SwiftMessages

import TextFieldEffects

class SignInVC: UIViewController {

    @IBOutlet weak var ViewOfBackground: UIView!
    @IBOutlet weak var showPasswordBtn: UIButton!
    
    @IBOutlet weak var EmailTF: HoshiTextField!
    @IBOutlet weak var Password: UITextField!
  
    @IBOutlet weak var btnSignIn: UIButton!
    override func viewDidLoad() {
               super.viewDidLoad()
               
               ViewOfBackground.clipsToBounds = true
               ViewOfBackground.layer.cornerRadius = 40
           }
           
           override var preferredStatusBarStyle: UIStatusBarStyle {
               return .lightContent
           }
         
    @IBAction func showPasswordBtn(_ sender: Any) {
        
        if (Password.isSecureTextEntry == false) {
            Password.isSecureTextEntry = true
            } else {
            Password.isSecureTextEntry = false
        }
        
      }
    @IBAction func btnSignIn(_ sender: Any) {
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "HomeVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnForgetPass(_ sender: Any) {
       
        let storyboard = UIStoryboard(name: "ForgetPassword", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "ForgetPasswordVC")
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func btnCreateAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Authontication", bundle: nil)
               let vc  = storyboard.instantiateViewController(withIdentifier: "SignUpVC")
               navigationController?.pushViewController(vc, animated: true)
        
    }
    
    }
