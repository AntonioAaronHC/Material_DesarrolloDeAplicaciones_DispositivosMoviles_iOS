//
//  ViewControler2.swift
//  Navegacion
//
//  Created by Facultad de Contaduría y Administración on 10/04/24.
//

import UIKit
class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dos(_ sender: Any) {
        performSegue(withIdentifier: "dos", sender: nil)
    }
    
}
