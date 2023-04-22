//
//  GIFImage.swift
//  TableFan
//
//  Created by Vinay Sharma on 22/04/23.
//

import SwiftUI

struct GIFImage: UIViewRepresentable {
    private let name: String?
    private var isOn: Bool
    
    public init(name: String, isOn: Bool) {
        self.name = name
        self.isOn = isOn
    }
    
    func makeUIView(context: Context) -> UIGIFImage {
        return UIGIFImage(name: name ?? "")
    }
    
    func updateUIView(_ uiView: UIGIFImage, context: Context) {
        if isOn{
            uiView.updateGIF(int: 1, name: name ?? "")
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { _ in
                uiView.updateGIF(int: 2, name: name ?? "")
            }
        }else{
            uiView.updateGIF(int: 3, name: name ?? "")
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { _ in
                uiView.updateGIF(int: 4, name: name ?? "")
            }
        }
    }
}
