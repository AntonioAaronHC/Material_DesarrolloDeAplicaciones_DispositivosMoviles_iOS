//
//  ViewController.swift
//  Navegacion
//
//  Created by Facultad de Contaduría y Administración on 10/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        performSegue(withIdentifier: "PrimerSegue", sender: nil)
    }
    
    @IBAction func onTap2(_ sender: Any) {
        performSegue(withIdentifier: "dosSegue", sender: nil)
    }
    @IBAction func onTap3(_ sender: Any) {
        performSegue(withIdentifier: "tresSegue", sender: nil)
    }
    @IBAction func onTap4(_ sender: Any) {
        performSegue(withIdentifier: "cuatroSegue", sender: nil)
    }
    @IBAction func onTap5(_ sender: Any) {
        performSegue(withIdentifier: "cincoSegue", sender: nil)
    }
    @IBAction func onTap6(_ sender: Any) {
        performSegue(withIdentifier: "seisSegue", sender: nil)
    }
    
}

