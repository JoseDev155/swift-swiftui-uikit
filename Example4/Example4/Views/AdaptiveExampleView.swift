//
//  AdaptiveExampleView.swift
//  Example4
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import SwiftUI
 
struct AdaptiveExampleView: View {
    // Detectamos la clase de tamaño horizontal
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
     
    var body: some View {
        // Si el ancho es 'compact' (iPhone en vertical), usamos VStack.
        // Si el ancho es 'regular' (iPad o iPhone en horizontal), usamos HStack.
        let layout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout(spacing: 20)) : AnyLayout(HStackLayout(spacing: 40))
         
        NavigationStack {
            layout {
                // Elemento 1: Una imagen o tarjeta
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint:
.bottomTrailing))
                        .frame(maxWidth: 300, maxHeight: 200)
                     
                    Image(systemName: "gyroscope")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                }
                 
                // Elemento 2: Texto descriptivo
                VStack(alignment: .leading, spacing: 10) {
                    Text("Sensor de Orientación")
                        .font(.largeTitle)
                        .bold()
                     
                    Text("Esta interfaz se adapta automáticamente cuando giras el dispositivo, optimizando el espacio disponible.")
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
            .padding(30)
            .navigationTitle("Adaptabilidad")
            .animation(.default, value: horizontalSizeClass) // Animación suave al rotar
        }
    }
}
