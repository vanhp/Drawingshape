//
//  BadgeView.swift
//  Landmarks
//
//  Created by vphom on 10/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct BadgeView: View {
    static let rotationCount = 5
    
    var badgeSymbols: some View {
        // rotate 360 split into 8 segments
        ForEach(0..<BadgeView.rotationCount){ i in
            RotatedBadgeSymbolView(
                angle: .degrees(Double(i) / Double(BadgeView.rotationCount)) * 360.0)
                    
        }
        .opacity(0.5)
        
    }
    var body: some View {
        // put the symbol inside the background shape
        ZStack{
            BadgeBackgroundView()
            GeometryReader { geometry in
              
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0,
                              y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
