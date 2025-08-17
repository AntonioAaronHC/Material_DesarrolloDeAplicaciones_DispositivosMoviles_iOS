//
//  ViewController.swift
//  Fibonacci
//
//  Created by Antonio Aaron Hernandez Cabrera on 03/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    //Guardar en memoria para la programacion dinamica
    var memoria = [Int: Int]()
    var index = 0

    func fibonacci(x: Int) -> Int{
        if x == 0 {
            memoria[x] = 0
            return 0
        }
        if x == 1 {
            memoria[x] = 1
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
    
    @IBAction func tapMenos(_ sender: Any) {
        index -= 1
        f.text = "\(fibonacci(x: index))"
    }
    
    @IBAction func tapMas(_ sender: Any){
        index += 1
        f.text = "\(fibonacci(x: index))"
    }
    
    @IBOutlet weak var f: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        f.text = "\(fibonacci(x: index))"
    }


}

