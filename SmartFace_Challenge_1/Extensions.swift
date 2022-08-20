//
//  Extensions.swift
//  SmartFace_Challenge_1
//
//  Created by Berkay Özdemir on 20.08.2022.
//

import Foundation
import SwiftUI


public extension View {
    func drawBorder(color : Color,radius:CGFloat) -> some View{
        return overlay(
            RoundedRectangle(cornerRadius: radius)
                .stroke(color, lineWidth: 5)
        )
    }
}


// ----------


/// Code taken from -> https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui/58606176#58606176

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
