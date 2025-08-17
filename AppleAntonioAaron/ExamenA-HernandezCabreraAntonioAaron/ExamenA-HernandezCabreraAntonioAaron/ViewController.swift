//
//  ViewController.swift
//  ExamenA-HernandezCabreraAntonioAaron
//
//  Created by Facultad de Contaduría y Administración on 07/06/24.
//

import UIKit


struct Almacena {
    
    
  public static var miTexto = ""
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var ingresaNumero: UITextField!
    
//    let result = Int(ingresaNumero.text!)
    
    //Guardar en memoria para la programacion dinamica
    var memoria = [Int: Int]()

    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    @IBAction func calcularButtonAction(_ sender: Any) {
        
        if let ingresaNum = Double(ingresaNumero.text!){
            resultado.text = "El fibonacci es: \(fibonacci(x: ingresaNum))"
            Almacena.miTexto = "El fibonacci es: \(fibonacci(x: ingresaNum))"
        }
        
        performSegue(withIdentifier: "vvvvv", sender: nil)
    }
    
    //Funcion fibonacci recursiva
    func fibonacci(x: Double) -> Double{
        
        if(x == 0){
            return 0;
            
        } else if(x == 1) {
            return 1;
            
        } else {
            return (fibonacci(x: x-1) + fibonacci(x: x-2));
        }
        
    }
}

