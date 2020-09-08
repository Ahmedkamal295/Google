//
//  PhoneVerificationVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/12/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class PhoneVerificationVC: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var viewOfBackground: UIView!
   
    
    @IBOutlet weak var TF1: UITextField!
    
    @IBOutlet weak var TF2: UITextField!
    
    @IBOutlet weak var TF3: UITextField!
    
    @IBOutlet weak var TF4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
   TF1.becomeFirstResponder()
          //let myColor = UIColor.black
        
                TF1.layer.cornerRadius = TF1.frame.size.width / 2
                TF2.layer.cornerRadius = TF2.frame.size.width / 2
                TF3.layer.cornerRadius = TF3.frame.size.width / 2
                TF4.layer.cornerRadius = TF4.frame.size.width / 2
        
                TF1.addTarget(self, action: #selector(textFieldDidChange1), for: .editingChanged)
                TF2.addTarget(self, action: #selector(textFieldDidChange2), for: .editingChanged)
                TF3.addTarget(self, action: #selector(textFieldDidChange3), for: .editingChanged)
                TF4.addTarget(self, action: #selector(textFieldDidChange4), for: .editingChanged)
                
                TF1.becomeFirstResponder()
                
                
                TF1.delegate = self
                TF2.delegate = self
                TF3.delegate = self
                TF4.delegate = self
          
      }
      func textFieldDidBeginEditing(_ textField: UITextField) {
             textField.text = ""
         }
         
         @objc func textFieldDidChange1()  {
             if TF1.text?.count == 1 {
                TF1.backgroundColor = UIColor.orange
                 TF2.becomeFirstResponder()
                
             }
         }
         
         @objc func textFieldDidChange2()  {
             if TF2.text?.count == 1 {
                TF2.backgroundColor = UIColor.orange
                 TF3.becomeFirstResponder()
             }
         }
         
         @objc func textFieldDidChange3()  {
             if TF3.text?.count == 1 {
                TF3.backgroundColor = UIColor.orange
                 TF4.becomeFirstResponder()
             }
         }
         
         @objc func textFieldDidChange4()  {
             if TF4.text?.count == 1 {
                TF4.backgroundColor = UIColor.orange
               let storyboard = UIStoryboard(name: "Authontication", bundle: nil)
                let vc  = storyboard.instantiateViewController(withIdentifier: "SignInVC")
                navigationController?.pushViewController(vc, animated: true)
                
                 TF4.resignFirstResponder()
             }
         }

    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
