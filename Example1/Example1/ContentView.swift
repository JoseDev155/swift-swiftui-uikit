//
//  ContentView.swift
//  Example1
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    // 1. Estado para almacenar el valor del slider
    @State private var speed: Double = 50.0
    
    var body: some View {
        VStack(spacing: 20) {
            // 2. Label (Text) para mostrar el valor actual
            Text("Velocidad: \(Int(speed)) km/h")
                .font(.title)
            
            // 3. Slider con rango (0 a 100)
            Slider(value: $speed, in: 0...100)
                .padding()
            
            // Ejemplo de slider con pasos (step)
            Slider(value: $speed, in: 0...100, step: 5)
                .accentColor(.red) // Cambiar color
        }
        .padding()
    }
}
