//
//  ValidationMock.swift
//  peiwoxue-ios
//
//  Created by WANG Jie on 12/10/2016.
//  Copyright © 2016 WANG Jie. All rights reserved.
//

import Foundation
import FormField

class ValidationMock: Validation {

    var shouldValid: Bool = false

    func validate(_ text: String, successHandler: () -> Void, failureHandler: (_ message: String?) -> Void) {
        if shouldValid {
            successHandler()
        } else {
            failureHandler("")
        }
    }
}
