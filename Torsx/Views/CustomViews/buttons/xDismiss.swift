//
//  xDismiss.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import SwiftUI

struct xDismiss: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30,height: 30)
                .foregroundColor(.brandPrimary)
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .imageScale(.small)
                .frame(width: 44, height:44)
        }
    }
}

#Preview {
    xDismiss()
}
