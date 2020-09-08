//
//  UserVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/22/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class UserVC: UIViewController {

    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func viewProfileAction(_ sender: Any) {
         let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
                                     self.present(nextViewController, animated:false, completion:nil)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//             let vc  = storyboard.instantiateViewController(withIdentifier: "ProfileVC")
//             navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func profileAction(_ sender: Any) {
       let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
               let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
                                            self.present(nextViewController, animated:false, completion:nil)
    }
    @IBAction func myInfoAction(_ sender: Any) {
    }
    
    @IBAction func savedAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let vc  = storyboard.instantiateViewController(withIdentifier: "SavedVC")
                    navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func settingsAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                           let vc  = storyboard.instantiateViewController(withIdentifier: "SettingsVC")
                           navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func termsAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
               let nextViewController = storyBoard.instantiateViewController(withIdentifier: "TermsandConditionsVC") as! TermsandConditionsVC
                                            self.present(nextViewController, animated:false, completion:nil)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                  let vc  = storyboard.instantiateViewController(withIdentifier: "TermsandConditionsVC")
//                                  navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func aboutAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                      let nextViewController = storyBoard.instantiateViewController(withIdentifier: "AboutVC") as! AboutVC
                                                   self.present(nextViewController, animated:false, completion:nil)
        
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                         let vc  = storyboard.instantiateViewController(withIdentifier: "AboutVC")
//                                         navigationController?.pushViewController(vc, animated: true)
    }
}
