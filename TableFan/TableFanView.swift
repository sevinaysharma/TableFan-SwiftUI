//
//  TableFanView.swift
//  TableFan
//
//  Created by Vinay sharma on 22/04/23.
//

import SwiftUI

struct TableFanView: View {
    
    @State var speed = 0.1
    @State var timer = Timer.publish(every: 500, on: .main, in: .default).autoconnect()
    @State var angle: Double = 0
    @State var shouldAnimate = false
    @State var currentAnimation = Animation.linear
    
    @State var isOn1 = true
    @State var isOn2 = false
    @State var isOn3 = false
    @State var isOn4 = false
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            ZStack {
                Circle()
                    .stroke(Color.black, lineWidth: 10)
                    .frame(width: 300, height: 300)
                FanBase()
                    .fill(Color.yellow)
                    .frame(width: 250, height: 250)
                    .rotationEffect(shouldAnimate ? .degrees(angle) : .degrees(0))
                Fan()
                    .fill(Color.black)
                    .frame(width: 250, height: 250)
                    .rotationEffect(shouldAnimate ? .degrees(angle) : .degrees(0))
                    .animation(currentAnimation.speed(speed))
                    .onAppear(perform: {
                        self.shouldAnimate = true
                    })
                    .onReceive(timer) { (_) in
                        self.angle += 90
                    }
                
                
            }
            
            Rectangle()
                .fill(LinearGradient(colors: [.black, Color(UIColor.brown)], startPoint: .top, endPoint: .bottom))
                .frame(width: 30, height: 120)
                .offset(x: 0, y: -5)
                .zIndex(-1)
            
            
            HStack(alignment: .center, spacing: 10) {
                
                Button(action: {
                    isOn1.toggle()
                    isOn2 = false
                    isOn3 = false
                    isOn4 = false
                    self.timer.upstream.connect().cancel()
                    self.speed = 0.2 / self.speed
                    self.currentAnimation = Animation.spring()
                }) {
                    VStack(alignment: .center, spacing: 5){
                        GIFImage(name: "switch", isOn: isOn1)
                        Text("STOP")
                            .font(.system(size: 12, weight: .bold, design: .default))
                            .foregroundColor(.red)
                    }
                    
                }
                .frame(width: 80, height: 80)
                .background(Color.clear)
                .mask(Circle())
                
                Button(action: {
                    isOn1 = false
                    isOn2.toggle()
                    isOn3 = false
                    isOn4 = false
                    self.timer = Timer.publish(every: 0.18, on: .main, in: .default).autoconnect()
                    self.speed = 0.18
                    self.currentAnimation = Animation.linear
                }) {
                    VStack(alignment: .center, spacing: 5){
                        GIFImage(name: "switch", isOn: isOn2)
                        Text("LOW")
                            .font(.system(size: 12, weight: .bold, design: .default))
                            .foregroundColor(.orange)
                    }
                }
                .frame(width: 80, height: 80)
                .background(Color.clear)
                .mask(Circle())
                
                Button(action: {
                    isOn1 = false
                    isOn2 = false
                    isOn3.toggle()
                    isOn4 = false
                    self.timer = Timer.publish(every: 0.12, on: .main, in: .default).autoconnect()
                    self.speed = 0.12
                    self.currentAnimation = Animation.linear
                }) {
                    VStack(alignment: .center, spacing: 5){
                        GIFImage(name: "switch", isOn: isOn3)
                        Text("MED")
                            .font(.system(size: 12, weight: .bold, design: .default))
                            .foregroundColor(.orange)
                    }
                }
                .frame(width: 80, height: 80)
                .background(Color.clear)
                .mask(Circle())
                
                Button(action: { // High speed button
                    isOn1 = false
                    isOn2 = false
                    isOn3 = false
                    isOn4.toggle()
                    self.timer = Timer.publish(every: 0.09, on: .main, in: .default).autoconnect()
                    self.speed = 0.09
                    self.currentAnimation = Animation.linear
                }) {
                    VStack(alignment: .center, spacing: 5){
                        GIFImage(name: "switch", isOn: isOn4)
                        Text("HIGH")
                            .font(.system(size: 12, weight: .bold, design: .default))
                            .foregroundColor(.orange)
                    }
                }
                .frame(width: 80, height: 80)
                .background(Color.clear)
                .mask(Circle())
            }
            .padding()
            .background(Color(UIColor.brown))
            .cornerRadius(16)
            .shadow(radius: 6)
            .offset(x: 0, y: -10)
            Spacer()
            
            Text("Vinay Sharma")
                .bold()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TableFanView()
    }
}









