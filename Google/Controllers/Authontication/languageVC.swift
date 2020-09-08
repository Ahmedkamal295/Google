//
//  languageVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/22/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class languageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func englishAction(_ sender: Any) {
    }
    @IBAction func ArabicAction(_ sender: Any) {
    }
    @IBAction func saveAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                      let vc  = storyboard.instantiateViewController(withIdentifier: "FirstPageVC")
                      navigationController?.pushViewController(vc, animated: true)
               
           }
    }
    

