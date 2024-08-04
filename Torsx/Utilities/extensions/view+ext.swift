//
//  view+ext.swift
//  Torsx
//
//  Created by Avi Maslow on 8/6/24.
//

import SwiftUI

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
