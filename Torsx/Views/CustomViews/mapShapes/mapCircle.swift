//
//  mapCircle.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import SwiftUI

struct mapCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY), control: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.maxY), control: CGPoint(x: rect.maxX, y: rect.minY))
        
        
        
        return path
    }
    
    
}

#Preview {
    mapCircle()
        .frame(width: 300, height: 225)
        .foregroundColor(.brandPrimary)
        
}
