//
//  VmEvent.swift
//  cookizwatch
//
//  Created by hanyong on 17/04/2019.
//  Copyright © 2019 Smobile. All rights reserved.
//

import Foundation

/**
 * Used as a wrapper for data that is exposed via a LiveData that represents an event.
 */
class VmEvent<T> {
    
    private(set) var hasBeenHandled: Bool = false
    

    let content: T
    
    init(_ content: T) {
        self.content = content
    }
    
    /**
     * Returns the content and prevents its use again.
     */
    func getContentIfNotHandled() -> T? {
        if hasBeenHandled {
            return nil
        } else {
            hasBeenHandled = true
            return content
        }
    }
    
    /**
     * Returns the content, even if it's already been handled.
     */
    func peekContent()-> T {
        return content
    }
    
}
