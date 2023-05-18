//
//  RoundedShape.swift
//  TwitterSwiftUIClone
//
//  Created by Taner Çelik on 18.05.

import SwiftUI

struct RoundedShape : Shape {
    var corners: UIRectCorner
    var width : Int
    var height : Int
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: width.self, height: height.self))
        
        return Path(path.cgPath)
    }
}
