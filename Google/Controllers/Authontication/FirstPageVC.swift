//
//  FirstPageVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/22/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class FirstPageVC: UIViewController {

   override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }

        @IBAction func SkipAction(_ sender: Any) {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                   let vc  = storyboard.instantiateViewController(withIdentifier: "HomeVC")
                   navigationController?.pushViewController(vc, animated: true)
            
        }
        @IBAction func LoginAction(_ sender: Any) {
            let storyboard = UIStoryboard(name: "Authontication", bundle: nil)
            let vc  = storyboard.instantiateViewController(withIdentifier: "SignInVC")
            navigationController?.pushViewController(vc, animated: true)
            
        }
        @IBAction func RegisterAction(_ sender: Any) {
            let storyboard = UIStoryboard(name: "Authontication", bundle: nil)
                   let vc  = storyboard.instantiateViewController(withIdentifier: "SignUpVC")
                   navigationController?.pushViewController(vc, animated: true)
        }
        
    }

