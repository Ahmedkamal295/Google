//
//  SettingsVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/13/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnback(_ sender: Any) {
         navigationController?.popViewController(animated: true)
    }
    @IBAction func EnglishAction(_ sender: Any) {
    }
    @IBAction func ArabicAction(_ sender: Any) {
    }
    @IBAction func saveAction(_ sender: Any) {
    }
   
}
