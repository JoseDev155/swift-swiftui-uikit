//
//  ViewController.swift
//  EjemploUIKit
//
//  Created by Jose Ramos on 26/3/26.
//

// import Foundation
import UIKit

class ViewController: UIViewController {
    let toggleSwitch = UISwitch()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // -----------------------------------------------------------
        // Necesarios para que los constraints funcionen correctamente
        toggleSwitch.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        // -----------------------------------------------------------
        
        toggleSwitch.addTarget(self,   action:   #selector(toggleSwitchChanged(_:)),   for: .valueChanged)
        view.addSubview(toggleSwitch)
        
        label.textAlignment = .center
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            toggleSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toggleSwitch.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.topAnchor.constraint(equalTo: toggleSwitch.bottomAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor)])}
    
    @objc func toggleSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            label.text = "Toggle is ON"
            label.textColor = .green
        } else {
            label.text = "Toggle is OFF"
            label.textColor = .red
        }
    }
}
