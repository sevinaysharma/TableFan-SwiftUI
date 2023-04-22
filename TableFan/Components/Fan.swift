//
//  Fan.swift
//  TableFan
//
//  Created by Vinay Sharma on 22/04/23.
//

import SwiftUI

struct Fan: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: 20, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY - 30))
        path.addPath(Wing().path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing().rotation(.degrees(240)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX + 30, y: rect.midY))
        path.addPath(Wing().rotation(.degrees(120)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX - 30, y: rect.midY))
        
        return path
    }
}
