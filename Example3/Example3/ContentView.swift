//
//  ContentView.swift
//  Example3
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI
 
struct ContentView: View {
    // Para detectar el tamaño de la pantalla y determinar la orientación
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
 
    var body: some View {
        GeometryReader { geometry in
            let isLandscape = geometry.size.width > geometry.size.height
             
            if isLandscape {
                // Diseño para Modo Landscape
                HStack(spacing: 20) {
                    LogoView(color: .blue)
                    InfoText(title: "Modo Landscape", description: "El contenido se organiza horizontalmente.")
                }
                .padding()
            } else {
                // Diseño para Modo Portrait
                VStack(spacing: 20) {
                    LogoView(color: .red)
                    InfoText(title: "Modo Portrait", description: "El contenido se organiza verticalmente.")
                }
                .padding()
            }
        }
    }
}
 
// Componentes reutilizables
struct LogoView: View {
    let color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(color)
            .frame(width: 150, height: 150)
            .overlay(Image(systemName: "iphone").foregroundColor(.white).font(.largeTitle))
    }
}
 
struct InfoText: View {
    let title: String
    let description: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .bold()
            Text(description)
                .font(.body)
                .foregroundColor(.gray)
        }
    }
}
