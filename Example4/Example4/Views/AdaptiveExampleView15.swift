//
//  AdaptiveExampleView13.swift
//  Example4
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import SwiftUI

struct AdaptiveExampleView15: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        // En Xcode 13 se usa NavigationView en lugar de NavigationStack
        NavigationView {
            Group {
                if horizontalSizeClass == .compact {
                    VStack(spacing: 20) {
                        mainContent
                    }
                } else {
                    HStack(spacing: 40) {
                        mainContent
                    }
                }
            }
            .padding(30)
            .navigationTitle("Adaptabilidad")
        }
    }
    
    // Extraer el contenido para no repetirlo en el if/else
    @ViewBuilder
    var mainContent: some View {
        // Elemento 1: La tarjeta
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(LinearGradient(colors: [.purple, .blue],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
                .frame(maxWidth: 300, maxHeight: 200)
            
            Image(systemName: "gyroscope")
                .font(.system(size: 80))
                .foregroundColor(.white)
        }
        
        // Elemento 2: El texto
        VStack(alignment: .leading, spacing: 10) {
            Text("Sensor de Orientación")
                .font(.largeTitle)
                .bold()
            
            Text("Esta interfaz se adapta automáticamente cuando giras el dispositivo.")
                .font(.body)
                .foregroundColor(.secondary)
            
            Button("Más información") {
                print("Acción ejecutada")
            }
            .buttonStyle(.borderedProminent)
            .padding(.top)
        }
        .frame(maxWidth: 400)
    }
}
