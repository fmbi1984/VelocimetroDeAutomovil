//: Un velocímetro de un automóvil digital

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
}

class Auto
{
    var velocidad : Velocidades
    
    init(velocidadinicial : Velocidades)
    {
        self.velocidad = velocidadinicial
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String)
    {
        var velocidadStr = "Apagado"
        switch self.velocidad
        {
        case .Apagado :
            print("\(self.velocidad.rawValue), \(velocidadStr)")
            self.velocidad = .VelocidadBaja
            velocidadStr = "Velocidad Baja"
        case .VelocidadBaja :
            self.velocidad = .VelocidadMedia
            velocidadStr = "Velocidad Media"
        case .VelocidadMedia :
            self.velocidad = .VelocidadAlta
            velocidadStr = "Velocidad Alta"
        case .VelocidadAlta :
            self.velocidad = .VelocidadMedia
            velocidadStr = "Velocidad Media"
        }
        print("\(self.velocidad.rawValue), \(velocidadStr)")
        return (self.velocidad.rawValue, velocidadStr)
    }
}

var miAuto = Auto(velocidadinicial : Velocidades.Apagado)

miAuto.velocidad

for var index = 0; index < 20; index++ {
    miAuto.cambioDeVelocidad()
}
