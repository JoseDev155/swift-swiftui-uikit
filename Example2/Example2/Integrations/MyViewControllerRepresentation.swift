//
//  MyViewControllerRepresentation.swift
//  Example2
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import SwiftUI
import UIKit

struct MyViewControllerRepresentation: UIViewControllerRepresentable {
    // 1. Crear la instancia del ViewController
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    // 2. Actualizar el ViewController cuando cambia el estado de SwiftUI (si es necesario)
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Aquí se podría pasar datos desde SwiftUI a UIKit si fuera necesario
    }
}
