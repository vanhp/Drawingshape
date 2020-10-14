//
//  RotatedBadgeSymbolView.swift
//  Landmarks
//
//  Created by vphom on 10/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbolView()
            .padding(-60)
            .rotationEffect(angle,anchor:.bottom)
    }
}

struct RotatedBadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbolView(angle: .init(degrees: 2))
    }
}
