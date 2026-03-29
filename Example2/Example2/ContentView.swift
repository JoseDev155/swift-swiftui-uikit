//
//  ContentView.swift
//  Example2
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Este es un Bridge de UIKit")
                .font(.headline)
                .padding()

            // Llamada al controlador de UIKit
            MyViewControllerRepresentation()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(.systemGroupedBackground))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
