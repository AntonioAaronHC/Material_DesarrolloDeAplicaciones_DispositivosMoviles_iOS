//
//  ViewController2.swift
//  ExamenA-HernandezCabreraAntonioAaron
//
//  Created by Facultad de Contaduría y Administración on 07/06/24.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var texto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        texto.text = Almacena.miTexto
//        Almacena.miTexto
    }


}
