//
//  HomeVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/9/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var viewSearch: UIView!
    @IBOutlet weak var btnSideMenu: UIButton!
    @IBOutlet weak var ViewOfBackground: UIView!
    @IBOutlet weak var textFieldSearch: UITextField!
    @IBOutlet weak var btnViewCategoies: UIButton!
    @IBOutlet weak var btnNotification: UIView!
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
      
        
        var imgArr = [     UIImage(named:"food"),
                           UIImage(named:"perfumes") ,
                           UIImage(named:"cosmetics"),
                           UIImage(named:"food") ,
                           UIImage(named:"cosmetics")]
           
    var imgArr2 = [     UIImage(named:"coca"),
                       UIImage(named:"cheese") ,
                       UIImage(named:"coca"),
                       UIImage(named:"cheese") ,
                       UIImage(named:"coca")]
    
  
    
    var nameProduct = [("Pizza"),("Pizza"),("Pizza"),("Pizza"),("Pizza")]
   
     var nameProduct2 = [("Peperoni Pie"),("5 Cheese"),("Peperoni Pie"),("5 Cheese"),("Peperoni Pie")]
     var PriceProduct = [("$23"),("$21"),("$22"),("$24"),("$23")]
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
             return 1
         }
         
         func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if collectionView == self.collectionView1 {
                           return imgArr.count + 1
                             }else{
                return imgArr2.count
                              }
                
                   }
         func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
             //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
    
              if collectionView == self.collectionView1 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as!CollectionViewCell1
                
                if indexPath.row == 6 {
                    
                      cell.lblName.text = nameProduct[indexPath.row]
                    
                }
                         
                           
                cell.MoreBtn.isHidden = true
                if indexPath.row == 5 {
                     cell.MoreBtn.isHidden = false
                    
                    
                }
                
              
                                       
                            
                            return cell
                            
                        } else  {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as!CollectionViewCell2
                            
           cell.lblName.text = nameProduct2[indexPath.row]
            cell.lblPrice.text = PriceProduct[indexPath.row]
            cell.img.image = imgArr2[indexPath.row]
                            return cell
                 
                        }
                    }
              

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            ViewOfBackground.clipsToBounds = true
            ViewOfBackground.layer.cornerRadius = 40
            
            viewSearch.layer.borderWidth = 0.5
            viewSearch.layer.borderColor = UIColor.darkGray.cgColor
         
        }
    
    @IBAction func btnMoreCategories(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                      let vc  = storyboard.instantiateViewController(withIdentifier: "CategoriesVC")
                      navigationController?.pushViewController(vc, animated: true)
        
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//               let nextViewController = storyBoard.instantiateViewController(withIdentifier: "CategoriesVC") as! CategoriesVC
//               self.present(nextViewController, animated:false, completion:nil)
        
    }
    @IBAction func btnGo(_ sender: Any) {
       
    }
    @IBAction func btnNotification(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "NotificationVC")
        navigationController?.pushViewController(vc, animated: true)
     
    }
    @IBAction func btnSideMenu(_ sender: Any) {
            
              if L102Language.currentAppleLanguage() == "ar"{
                  panel?.openRight(animated: true)
                     }else{

                         panel?.openLeft(animated: true)
                     }
        
     
        func bestFrameSize() -> CGFloat {
               let frameHeight = self.view.frame.height
               let frameWidth = self.view.frame.width
               let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
               return bestFrameSize
           }
    }
    
}

    
extension HomeVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView1 {
                   let bounds = collectionView.bounds
                    let heightVal = (self.collectionView1.frame.width - 40)/3
                    let widthVal = self.view.frame.width
                    let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/3
                    return CGSize(width:  heightVal  , height: heightVal )
               }else{
                   let bounds = collectionView.bounds
                   let heightVal = (self.collectionView2.frame.height - 40)/3
                   let widthVal = (self.collectionView2.frame.width - 40)/3
                   let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/1
                  return CGSize(width: 331   , height: 200 )
                
               }
           }
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == self.collectionView1 {
            
            return 5
        } else{
            
             return 10
        }
       
    }
    
}



