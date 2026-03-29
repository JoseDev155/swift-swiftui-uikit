//
//  ContentView.swift
//  ExampleSwiftUI
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggled = false
    
    var body: some View {
        VStack {
            Toggle("Toggle", isOn: $isToggled)
                .padding()
            if isToggled {
                Text("Toggle is ON")
                    .foregroundColor(.green)
            } else {
                Text("Toggle is OFF")
                    .foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
