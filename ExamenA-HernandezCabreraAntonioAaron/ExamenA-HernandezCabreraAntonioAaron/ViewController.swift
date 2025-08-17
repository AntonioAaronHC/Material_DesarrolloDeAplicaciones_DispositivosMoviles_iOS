//
//  ViewController.swift
//  ExamenA-HernandezCabreraAntonioAaron
//
//  Created by Facultad de Contaduría y Administración on 07/06/24.
//

import UIKit


struct Almacena {
    
    
    public static var miTexto = 0.0
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var ingresaNumero: UITextField!
    
//    let result = Int(ingresaNumero.text!)
    
    //Guardar en memoria para la programacion dinamica
    var memoria = [Double: Double]()

    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    @IBAction func calcularButtonAction(_ sender: Any) {
        
        if let ingresaNum = Double(ingresaNumero.text!){
            let x = fibonacci(x: ingresaNum)
            resultado.text = "El fibonacci es: \(x)"
            Almacena.miTexto = x
        }
        
        performSegue(withIdentifier: "vvvvv", sender: nil)
    }
    
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
            let resultado = fibonacci(x: x-1) + fibonacci(x: x-2)
            memoria[x] = resultado
            return resultado
        }
    }
}

