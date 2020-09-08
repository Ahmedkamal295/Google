//
//  AboutVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/22/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {
  @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnback(_ sender: Any) {
        dismiss(animated: false, completion: nil)
//          navigationController?.popViewController(animated: true)
                 
       }

}
