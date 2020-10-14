//
//  BadgeSymbolView.swift
//  Landmarks
//
//  Created by vphom on 10/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct BadgeSymbolView: View {
    var body: some View {
        GeometryReader { geometry in
            
         // draw the peak startrek symbol
            Path { path in
                let width = min(geometry.size.width,geometry.size.height)
                let height = width * 0.85
                let spacing = width * 0.030
                let middle = width / 2
                let topWidth = 0.26 * width
                let topHeight = 0.488 * height
                
                path.addLines([
                    CGPoint(x: middle,y:spacing),
                    CGPoint(x:middle - topWidth,y:topHeight - spacing),
                    CGPoint(x: middle,y: topHeight / 2 + spacing),
                    CGPoint(x:middle + topWidth, y:topHeight - spacing),
                    CGPoint(x: middle,y:spacing)
                ])
            // draw the base of mountain
            
                path.move(to:   CGPoint(x:middle,y:topHeight / 2 + spacing * 3))
                path.addLines([
                    CGPoint(x: middle - topWidth,y:topHeight + spacing),
                    CGPoint(x:spacing,y:height - spacing),
                    CGPoint(x: width - spacing,y: height - spacing ),
                    CGPoint(x:middle + topWidth, y:topHeight + spacing),
                    CGPoint(x: middle,y:topHeight / 2 + spacing * 3)
                
                ])
            }
            .fill(Self.symbolColor)
            
        }
    }
    static let symbolColor = Color(red: 79.0 / 255,green: 79.0 / 255,blue: 191.0 / 255)
}

struct BadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbolView()
    }
}
