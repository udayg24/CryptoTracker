//
//  String.swift
//  Crypto
//
//  Created by Uday Gajera on 27/01/24.
//

import Foundation

extension String {

    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
