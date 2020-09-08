//
//  CategoriesVC.swift
//  Google
//
//  Created by Ahmed kamal on 8/12/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
        var imgArr = [       UIImage(named:"Burger"),
                             UIImage(named:"Burger") ,
                             UIImage(named:"Burger"),
                             UIImage(named:"Burger") ,
                             UIImage(named:"Burger") ,
                             UIImage(named:"Burger")]
    
     var nameProduct = [("Burger"),("Pizza"),("Asian"),("Dessert"),("Mexican"),("Breakfast")]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
                   return 1
               }
               
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as!CategoriesCell
         cell.lblName.text = nameProduct[indexPath.row]
            cell.img.image = imgArr[indexPath.row]
                                                     
            return cell
                                          
    }
   
          
                                   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }
     func bestFrameSize() -> CGFloat {
                  let frameHeight = self.view.frame.height
                  let frameWidth = self.view.frame.width
                  let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
                  return bestFrameSize
              }

}
    
extension CategoriesVC : UICollectionViewDelegateFlowLayout {
  
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
                 
        
                    let heightVal = ( self.collectionView.frame.height - 120 ) / 2
                 
           //  return CGSize(width: heightVal   , height: heightVal )
                   return CGSize(width:  161  , height: 109 )
             
               
           }
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}



