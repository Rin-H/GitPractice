//
//  ContentView.swift
//  GitPractice
//
//  Created by Rin Hiejima on 2020/07/07.
//  Copyright © 2020 Rin Hiejima. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let images = [(systemName: "sun.max.fill", tag:"Sun"),
                  (systemName: "cloud.fill", tag:"Cloudy"),
                  (systemName: "umbrella.fill", tag:"Rain"),
                  (systemName: "snow", tag:"Snow")]
    
    @State var weather = 1
    @State var metre: Double = 0
    @State var isChanged = false
    @State var isTapped = false
    
    var body: some View {
        VStack{
            Text("My, World!")
            Slider(value: $metre, in: -100...100, step: 0.1, onEditingChanged:  {
                changed in
                self.isChanged = changed
            }, minimumValueLabel: Text("-100"),
               maximumValueLabel: Text("100"),
               label: { EmptyView() })
            
            if !isChanged {
                Text("\(metre) m is  \(metre * 0.3048) feet")
                .padding()
            } else {
                Text("\(metre)")
                .padding()
            }
            Button(action: {self.isTapped.toggle() }){
                Text("text change")
            }
            Text(isTapped ? "Tapped" : "NotTapped")
            Picker(selection: $weather,
                   label: Text("Weather")) { ForEach(0..<images.count){
                    Image(systemName: self.images[$0].systemName)
                    }
            }.pickerStyle(SegmentedPickerStyle())
            Text("\(images[weather].tag)")
=======
            Image("sakura")
                .resizable()
                .scaledToFit()
                .blurButton()
>>>>>>> AddImageBranch
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
