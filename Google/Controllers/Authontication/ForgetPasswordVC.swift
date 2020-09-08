//
//  ForgetPasswordVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/8/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class ForgetPasswordVC: UIViewController {
    
    @IBOutlet weak var viewOfBackground: UIView!
    @IBOutlet weak var txtEmail: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOfBackground.clipsToBounds = true
        viewOfBackground.layer.cornerRadius = 40
        
       
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func btnSend(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "ForgetPassword", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "VerifyVC")
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
