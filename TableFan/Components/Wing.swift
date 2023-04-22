//
//  Wing.swift
//  TableFan
//
//  Created by Vinay Sharma on 22/04/23.
//

import SwiftUI

struct Wing: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX - 20, y: rect.midY - 20))
        path.addQuadCurve(to: CGPoint(x: rect.midX + 10, y: rect.midY - 10), control: CGPoint(x: rect.midX, y: rect.midY - 20))
        path.addLine(to: CGPoint(x: rect.midX + 40, y: rect.midY / 2))
        path.addQuadCurve(to: CGPoint(x: rect.midX - 40, y: rect.midY / 25), control: CGPoint(x: rect.midX + 40, y: 0))
        path.closeSubpath()
        
        return path
    }
    
}

struct Wing2: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY - 20))
        path.addQuadCurve(to: CGPoint(x: rect.midX + 30, y: rect.midY - 10), control: CGPoint(x: rect.midX, y: rect.midY - 20))
        path.addLine(to: CGPoint(x: rect.midX + 0, y: rect.midY / 30))
        path.addQuadCurve(to: CGPoint(x: rect.midX - 2, y: rect.midY / 25), control: CGPoint(x: rect.midX, y: 0))
        path.closeSubpath()
        
        return path
    }
    
}
