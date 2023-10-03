//
//  ContentView.swift
//  Atrebut
//
//  Created by MyachinGarpix on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var size = 300.0
    var body: some View {
        VStack{
            Group{
                Text("Mарафон ").foregroundColor(.gray) + Text("по SwiftUI ") + Text("«Отцовский пинок»").font(Font.largeTitle).bold().foregroundColor(.blue)
            }
                .frame(width: size)
                .border(.green)
            Slider(
                value: $size,
                in: 100...300
            ).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
