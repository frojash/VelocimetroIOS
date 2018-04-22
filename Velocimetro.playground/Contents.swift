import UIKit

var str = "Velocimetro"

enum Velocidades : Int{
    case Apagado = 0,
     VelocidadBaja = 20,
     VelocidadMedia = 50,
     VelocidadAlta = 120
    
    var descripcion: String {
        return String(describing: self)
    }
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades

    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        let velocidadActualDes : String = velocidad.descripcion
        let velocidadActualNum : Int = velocidad.rawValue

        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        default:
            velocidad = .VelocidadMedia
        }
        return (velocidadActualNum,velocidadActualDes)
    }
}

var auto = Auto()


for _ in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
}



