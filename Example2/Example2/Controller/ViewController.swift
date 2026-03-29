//
//  ViewController.swift
//  Example2
//
//  Created by Jose Ramos on 29/3/26.
//

import Foundation
import UIKit
 
class ViewController: UIViewController {
 
    // 1. Declaración de componentes (Lazy loading para optimización de memoria)
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.text = "Desarrollo Móvil"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .label
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false // Importante para AutoLayout
        return label
    }()
 
    private lazy var fontSizeSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 10
        slider.maximumValue = 60
        slider.value = 20
        slider.minimumTrackTintColor = .systemBlue
        slider.translatesAutoresizingMaskIntoConstraints = false
         
        // Agregar acción para detectar cambios de valor
        slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
        return slider
    }()
 
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Tamaño: 20 pts"
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 14, weight: .light)
        label.textColor = .secondaryLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
 
    // 2. Configuración de la Interfaz y Constraints
    private func setupUI() {
        view.backgroundColor = .systemBackground
         
        // Agregar subvistas
        view.addSubview(valueLabel)
        view.addSubview(fontSizeSlider)
        view.addSubview(infoLabel)
         
        // Definición de Constraints (Auto Layout Programático)
        NSLayoutConstraint.activate([
            // Label Principal en el centro
            valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            valueLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            valueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            valueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             
            // Slider en la parte inferior
            fontSizeSlider.bottomAnchor.constraint(equalTo:
view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            fontSizeSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:
40),
            fontSizeSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             
            // Info Label sobre el slider
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.bottomAnchor.constraint(equalTo: fontSizeSlider.topAnchor, constant:
10)
        ])
    }
 
    // 3. Lógica de Interacción (Target-Action)
    @objc private func sliderValueChanged(_ sender: UISlider) {
        let newValue = CGFloat(sender.value)
         
        // Actualizar el tamaño de la fuente dinámicamente
        valueLabel.font = valueLabel.font.withSize(newValue)
         
        // Actualizar el texto informativo con formato de un decimal
        infoLabel.text = String(format: "Tamaño: %.1f pts", newValue)
         
        // Feedback háptico opcional (para dar sensación de ingeniería de calidad)
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
}
