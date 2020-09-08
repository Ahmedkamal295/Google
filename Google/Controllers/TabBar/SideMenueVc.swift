//
//  SideMenueVc.swift
//  Google
//
//  Created by Ahmed kamal on 8/9/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

let sidemenuestry = "SideMenu"

class SideMenueVc: UIViewController ,UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var ViewOfBackground: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var img =     [UIImage(named: "profile"),
                   UIImage(named: "myinfo"),
                   UIImage(named: "saved"),
                   UIImage(named: "setting"),
                   UIImage(named: "terms"),
                   UIImage(named: "about"),]
    
    var Name = [("Profile"),("My info"),("Saved Address"),("Settings"),("Terms & Conditions"),("About us"),]
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
        navigationController?.isNavigationBarHidden = true
        ViewOfBackground.clipsToBounds = true
        ViewOfBackground.layer.cornerRadius = 40
           tableView.tableFooterView = UIView()
           
           func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
               return 45
               
           }
           
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return Name.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellSideMenu
        cell?.lblName.text = Name[indexPath.row]
        cell?.img.image = img[indexPath.row]
//           cell?.index = indexPath
//           cell?.delegate = self
           return cell!
       }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if indexPath.row == 0 {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                     let vc  = storyboard.instantiateViewController(withIdentifier: "ProfileVC")
                     navigationController?.pushViewController(vc, animated: true)
                
//               let storyBoard : UIStoryboard = UIStoryboard(name: "SideMenu", bundle:nil)
//                             let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
//                             self.present(nextViewController, animated:false, completion:nil)
                
//                 let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//                let centerVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
//                centerVC.modalPresentationStyle = .fullScreen
//                let centerNavVC = UINavigationController(rootViewController: centerVC)
//                panel!.center(centerNavVC)
                
            } else if indexPath.row == 1 {
                print("myinfo")
            } else if indexPath.row == 2 {
                print("saved")
            } else if indexPath.row == 3 {
                print("setting")
            } else if indexPath.row == 4 {
                print("terms")
            } else if indexPath.row == 5 {
                print("about")

            } else if indexPath.row == 6 {
//                let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                let vc  = storyboard.instantiateViewController(withIdentifier: "FavouritsVC") as! FavouritsVC
//                vc.modalPresentationStyle = .fullScreen
//                present(vc, animated: true, completion: nil)
            } else if indexPath.row == 7 {
//                let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                let vc  = storyboard.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
//                vc.modalPresentationStyle = .fullScreen
//                present(vc, animated: true, completion: nil)
            } else {
                print("Error")
            }
        }
    @IBAction func btnViewProfile(_ sender: Any) {
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
                          let vc  = storyboard.instantiateViewController(withIdentifier: "ProfileVC")
                          navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnBack(_ sender: Any) {
       if L102Language.currentAppleLanguage() == arabicLang {
                       panel?.closeLeft()
                   }else{
                       panel?.closeRight()
                   }
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    }
    
    

 
