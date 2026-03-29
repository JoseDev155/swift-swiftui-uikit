//
//  ContentView.swift
//  Example4
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // iOS 15
        AdaptiveExampleView15()
        
        // iOS 16
        //AdaptiveExampleView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
