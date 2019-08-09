//
//  MyError.swift
//  BaseCodeIosApp
//
//  Created by hanyong on 09/08/2019.
//  Copyright © 2019 hanyong. All rights reserved.
//

import Foundation

enum MyError: Error {
    
    case ServerResponseError ( error : Error )
}
