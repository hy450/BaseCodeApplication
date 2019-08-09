//
//  Navigator.swift
//  BaseCodeIosApp
//
//  Created by hanyong on 09/08/2019.
//  Copyright © 2019 hanyong. All rights reserved.
//

import Foundation
import UIKit
import SwinjectStoryboard
import Swinject

class Navigator {
    
    //로그인 화면
    class func toLogin(navController: UINavigationController?) {
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let storyboard = SwinjectStoryboard.create(name: "Login", bundle: nil, container: appDelegate.getContainer())
            //let loginController = storyboard.instantiateViewController(withIdentifier: "Login") as! HomeViewController
            //navController?.setViewControllers([loginController], animated: true)
        }
        
    }
}
