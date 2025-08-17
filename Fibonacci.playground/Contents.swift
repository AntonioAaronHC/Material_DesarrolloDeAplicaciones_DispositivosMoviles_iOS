import UIKit

var memoria = [Double: Double]()

func fibonacci(x: Double) -> Double{
    if x == 0 {
        return 0
    }
    if x == 1 {
        return 1
    }
    if let valor = memoria[x]{
        return valor
    } else {
        let resultado = fibonacci(x: x-1) + fibonacci(x: -2)
        memoria[x] = resultado
        return resultado
    }
}

fibonacci(x: 50)
