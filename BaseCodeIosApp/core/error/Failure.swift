//
//  Failure.swift
//  BaseCodeIosApp
//
//  Created by hanyong on 09/08/2019.
//  Copyright © 2019 hanyong. All rights reserved.
//

import Foundation

enum Failure {
    
    /** Error 를 담는 Failure **/
    case ErrorFailure(_ error: Error)
    case UnknownFailure
}
