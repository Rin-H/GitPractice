//
//  UtilModifier.swift
//  GitPractice
//
//  Created by Rin Hiejima on 2020/07/08.
//  Copyright © 2020 Rin Hiejima. All rights reserved.
//

import SwiftUI

struct imageBlur: ViewModifier {
    @State var isTapped = false
    
    func body(content: Content) -> some View {
        ZStack(alignment: .top){
            if isTapped {
                content.blur(radius: 5.0)
            } else {
                content.blur(radius: 0)
            }
            Button(action: {self.isTapped.toggle()}){
                Text("Tap to blur")
                    .background(Color.gray)
            }
        }
    }
}

extension View {
    func blurButton() -> some View {
        self.modifier(imageBlur())
    }
}
