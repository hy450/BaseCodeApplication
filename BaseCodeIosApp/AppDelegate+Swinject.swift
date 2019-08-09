//
//  AppDelegate+Swinject.swift
//  BaseCodeIosApp
//
//  Created by hanyong on 09/08/2019.
//  Copyright © 2019 hanyong. All rights reserved.
//

import Foundation
import SwinjectAutoregistration
import Swinject
import SwinjectStoryboard

extension AppDelegate {    
    
    func initSwinjectConfigure() throws {
        
        container = Container() { container in
            
            // MARK:- ViewModel
            
            // MARK:- View ( StoryBoard )
            
            // MARK:- Repository
            
            // MARK:- UseCase            
            
            
        }
        
    }
    
    func getContainer() -> Container {
        return container
    }
    
}
