//
//  UIApplication.swift
//  Crypto
//
//  Created by Uday Gajera on 25/01/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
