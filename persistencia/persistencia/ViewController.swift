//
//  ViewController.swift
//  persistencia
//
//  Created by Facultad de Contaduría y Administración on 24/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miTexto: UITextField!
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        miTexto.text = userDefault.string(forKey: "Llave")
    }

    @IBAction func texto(_ sender: Any) {
        userDefault.set(miTexto.text, forKey: "Llave")
        print(miTexto.text)
    }
}
