# EJEMPLO 4

Sexta app de iOS hecha en la Práctica 2.

Uso de ambas orientaciones, incluyendo la configuración del Info.plist o Adaptive Layouts en Xcode con SwiftUI.

## Vista según la versión de iOS

Se hicieron 2 versiones, una para **iOS 15** y otra para **iOS 16**, ya que mi máquina virtual la configuré con *macOS BigSur*,
**por defecto** la app funciona con iOS 15.

Para cambiar entre versiones, comentar una versión y descomentar la otra en el `ContentView.swift`

```swift
struct ContentView: View {
    var body: some View {
        // iOS 15
        AdaptiveExampleView15()
        
        // iOS 16
        //AdaptiveExampleView()
    }
}
```
