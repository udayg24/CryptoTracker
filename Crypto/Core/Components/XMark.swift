//
//  XMark.swift
//  Crypto
//
//  Created by Uday Gajera on 25/01/24.
//

import SwiftUI

struct XMark: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
presentationMode.wrappedValue.dismiss()
}, label: {
Image(systemName: "xmark")
.font(.headline)
})
    }
}

#Preview {
    XMark()
}
