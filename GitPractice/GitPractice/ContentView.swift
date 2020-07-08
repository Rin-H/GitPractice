//
//  ContentView.swift
//  GitPractice
//
//  Created by Rin Hiejima on 2020/07/07.
//  Copyright © 2020 Rin Hiejima. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var metre: Double = 0
    @State var isChanged = false
    
    var body: some View {
        VStack{
            Text("Hello, World!")
            Slider(value: $metre, in: -100...100, step: 0.1, onEditingChanged:  {
                changed in
                self.isChanged = changed
            }, minimumValueLabel: Text("-100"),
               maximumValueLabel: Text("100"),
               label: { EmptyView() })
            
            if !isChanged {
                Text("\(metre) m is  \(metre * 0.3048) feet")
            } else {
                Text("\(metre)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}