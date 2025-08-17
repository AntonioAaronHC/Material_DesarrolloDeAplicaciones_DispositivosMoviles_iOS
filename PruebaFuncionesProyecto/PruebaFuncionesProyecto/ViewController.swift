//
//  ViewController.swift
//  PruebaFuncionesProyecto
//
//  Created by Facultad de Contaduría y Administración on 26/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var dic: [String:Int] = [:]
    var num = 0
    
    @IBAction func boton(_ sender: Any) {
        num += 1
        label.text = "\(num)"
    }
    
    @IBOutlet weak var label: UILabel!
    
}

