//
//  ViewController3.swift
//  Navegacion
//
//  Created by Facultad de Contaduría y Administración on 10/04/24.
//

import UIKit
class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tres(_ sender: Any) {
        performSegue(withIdentifier: "tres", sender: nil)
    }
    
}
