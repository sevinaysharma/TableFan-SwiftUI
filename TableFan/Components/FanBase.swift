//
//  FanBase.swift
//  TableFan
//
//  Created by Vinay Sharma on 22/04/23.
//

import SwiftUI

struct FanBase: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: 20, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY - 30))
        path.addPath(Wing2().path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(15)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(30)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(45)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(60)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(75)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(90)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(105)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(120)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(135)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(150)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(165)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(180)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(195)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(210)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(225)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(240)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(255)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(270)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(285)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY + 30))
        path.addPath(Wing2().rotation(.degrees(300)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX + 30, y: rect.midY))
        path.addPath(Wing2().rotation(.degrees(315)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX + 30, y: rect.midY))
        path.addPath(Wing2().rotation(.degrees(330)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX + 30, y: rect.midY))
        path.addPath(Wing2().rotation(.degrees(345)).path(in: rect))
        
        path.move(to: CGPoint(x: rect.midX - 30, y: rect.midY))
        
        return path
    }
}
