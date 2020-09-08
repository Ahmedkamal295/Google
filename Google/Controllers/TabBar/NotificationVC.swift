//
//  NotificationVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/13/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class NotificationVC:UIViewController ,UITableViewDelegate, UITableViewDataSource {
   
     @IBOutlet weak var ViewOfBackground: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var img =     [UIImage(named: "no1"),
                   UIImage(named: "no2"),
                   UIImage(named: "no3"),
                   UIImage(named: "no4"),]
    
    var Name = [("Account"),("Transaction"),("Manage"),("Hel"),]
    
    
    var Description = [("Change secret PIN or Recover"),("List of completed digital payments"),("Add or remove card"),("Get support or report any issue"),]
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
        ViewOfBackground.clipsToBounds = true
        ViewOfBackground.layer.cornerRadius = 40
           tableView.tableFooterView = UIView()
           
           func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
               return 93
               
           }
           
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return Name.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NotificationCell
        cell?.lblName.text = Name[indexPath.row]
        cell?.lblDescr.text = Description[indexPath.row]
        
        cell?.img.image = img[indexPath.row]
//           cell?.index = indexPath
//           cell?.delegate = self
           return cell!
       }
     
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }

 }
