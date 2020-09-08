//
//  Constant.swift
//  Google
//
//  Created by Ahmed kamal on 8/9/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import Foundation

import UIKit

let arabicLang = "ar"
let englishLang = "en"


let appDelegate = UIApplication.shared.delegate as! AppDelegate
let appscene = UIApplication.shared.connectedScenes
.first!.delegate as! SceneDelegate

import UIKit

enum storyBoardName: String {
    case authentication = "Authentication"
    case landing = "Landing"
    case menu = "Menu"
}

enum storyBoardVCIDs: String {
    case IntroVC = "IntroVC"
    case signUp = "signUpVc"
    case home = "mainMapsVC"
    case login = "logInVc"
    case Logout = "logout"
    case contactUsVc = "contactUsVc"
    case termsAndConditionVc = "termsAndConditionVc"
    case SideMenueVC = "SideMenueVC"
    case SendComplianceVC = "SendComplianceVC"
}
extension UIStoryboard {
    class func instantiateInitialViewController(_ board: storyBoardName) -> UIViewController {
        let story = UIStoryboard(name: board.rawValue, bundle: nil)
        return story.instantiateInitialViewController()!
    }
}
