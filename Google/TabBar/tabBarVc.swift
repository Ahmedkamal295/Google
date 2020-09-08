

//
//  TabBar.swift
//  MVPDemo
//
//  Created by Ahmed kamal on 5/31/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//


import UIKit

extension UIImage {
class func colorForNavBar(color: UIColor) -> UIImage {
    //let rect = CGRectMake(0.0, 0.0, 1.0, 1.0)

    let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 1.0, height: 1.0))

    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()

    context!.setFillColor(color.cgColor)
    context!.fill(rect)

    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()


     return image!
    }
}


class tabBarVc: UITabBarController,UITabBarControllerDelegate {

    func setShadow(view : UIView , width : Int , height: Int , shadowRadius: CGFloat , shadowOpacity: Float , shadowColor: CGColor){
        // to make the shadow with rounded corners and offset shadow form the bottom
        view.layer.shadowColor = shadowColor
        view.layer.shadowOffset = CGSize(width: width, height: height)
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOpacity = shadowOpacity
        view.clipsToBounds = true
        view.layer.masksToBounds = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
      selectedIndex = 4

        let nc = NotificationCenter.default
              
        
        nc.addObserver(self, selector: #selector(segue), name: Notification.Name("TheAdd"), object: nil)
              
      
        self.tabBar.backgroundColor = UIColor(named: "#FFFFFF")
    
        
        let myTabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
        myTabBarItem1.image = #imageLiteral(resourceName: "iconHome").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem1.selectedImage = #imageLiteral(resourceName: "iconHome").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
   
        
                  
        let myTabBarItem2 = (self.tabBar.items?[1])! as UITabBarItem
        myTabBarItem2.image = #imageLiteral(resourceName: "iconPlus").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem2.selectedImage = #imageLiteral(resourceName: "iconPlus").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
      
        

        let myTabBarItem4 = (self.tabBar.items?[2])! as UITabBarItem
       myTabBarItem4.image = #imageLiteral(resourceName: "iconCategors").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
               myTabBarItem4.selectedImage = #imageLiteral(resourceName: "iconCategors").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
              
             
        let myTabBarItem5 = (self.tabBar.items?[3])! as UITabBarItem
        myTabBarItem5.image = #imageLiteral(resourceName: "iconProfile").withRenderingMode(.alwaysOriginal)
        myTabBarItem5.selectedImage = #imageLiteral(resourceName: "iconProfile").withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
    
        

       
        self.delegate = self

      
        
    tabBar.layer.cornerRadius = 20
    tabBar.clipsToBounds = true
    tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
                    
         UITabBar.appearance().backgroundImage = UIImage.colorForNavBar(color: .white)

        //Set Shadow Color
      
        setShadow(view: UITabBar.appearance() , width: 1, height: 1, shadowRadius: 5, shadowOpacity: 0.5, shadowColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
    }
    
     @objc func segue(){
            
   
          self.selectedIndex = 2
            
        }

}

