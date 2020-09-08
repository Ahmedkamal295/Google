//
//  Search1VC.swift
//  Google
//
//  Created by Ahmed kamal on 8/11/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class Search1VC: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var btnFilter: UIButton!
    
    @IBOutlet weak var textfiledSearch: UITextField!
     @IBOutlet weak var ViewOfBackground: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var img =     [UIImage(named: "1"),
                   UIImage(named: "2"),
                   UIImage(named: "3"),
                   UIImage(named: "4"),
                   UIImage(named: "2"),
                   UIImage(named: "1"),
                   UIImage(named: "3"),
                   UIImage(named: "4")]
    
    var Name = [("Burger King "),("KFC "),("Mc Donald's "),("Wendy's"),("Burger King"),("Mc Donald's"),("KFC"),("Burger King "),]
    
     var Rate = [("4.5"),("4.7"),("4.8"),("4.3"),("4.1"),("4.9"),("4.6"),("5.0"),]
    
    var Price = [(". Burger . $$"),(". Burger . $$"),(". Burger . $$"),(". Burger . $$"),(". Burger . $$"),(". Burger . $$")
        ,(". Burger . $$"),(". Burger . $$"),]

    var Time = [("25-30 min"),("25-30 min"),("25-30 min"),("25-30 min"),("25-30 min")
        ,("25-30 min"),("25-30 min"),("25-30 min"),]
    
    var Location = [("2,1km"),("2,1km"),("2,1km"),("2,1km"),("2,1km"),("2,1km"),("2,1km"),("2,1km"),]
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
        ViewOfBackground.clipsToBounds = true
        ViewOfBackground.layer.cornerRadius = 40
           tableView.tableFooterView = UIView()
           
           func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
               return 141
               
           }
           
      

       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return Name.count
       }
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "FilterVC")
             navigationController?.pushViewController(vc, animated: true)
                                        
                         }
               
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellSearch1
        cell?.lblName.text = Name[indexPath.row]
        cell?.lblRate.text = Rate[indexPath.row]
        cell?.lblPrice.text = Price[indexPath.row]
        cell?.lblTime.text = Time[indexPath.row]
        cell?.lblLocation.text = Location[indexPath.row]
        cell?.img.image = img[indexPath.row]
//           cell?.index = indexPath
//           cell?.delegate = self
           return cell!
       }
      
   @IBAction func btnFilter(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Search", bundle: nil)
    let vc  = storyboard.instantiateViewController(withIdentifier: "FilterSearchVC")
    navigationController?.pushViewController(vc, animated: true)
    
      }
    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//          return .lightContent
//      }
   
 }
//
//extension Search1VC: CellSearch1 {
//    func alertData(indx: Int) {
//
//        let alert = UIAlertController(title: "تنبيه !", message: "👇 😛", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "موافق", style: .cancel, handler: nil)
//            alert.addAction(okAction)
//        self.present(alert, animated: false, completion: nil)
//
////        img.remove(at: indx)
////        lbl.remove(at: indx)
    ////        tableView.
    
