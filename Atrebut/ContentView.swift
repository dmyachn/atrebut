//
//  ContentView.swift
//  Atrebut
//
//  Created by MyachinGarpix on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var size = 300.0
    var maraphone: AttributedString {
        var result = AttributedString("Mарафон ")
        result.foregroundColor = .gray
        return result
    }
    
    
    var swift: AttributedString {
        var result = AttributedString("по SwiftUI")
        return result
    }
    
    var father: AttributedString {
        var result = AttributedString(" «Отцовский пинок»")
        result.font = .boldSystemFont(ofSize: 35)
        
        result.foregroundColor = .blue
        return result
    }
    
    var body: some View {
        VStack{
            Text(maraphone + swift + father)
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
