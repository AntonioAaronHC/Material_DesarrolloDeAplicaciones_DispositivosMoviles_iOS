//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by Facultad de Contaduría y Administración on 24/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Facil(_ sender: Any) {
        if let facil = storyboard?.instantiateViewController(identifier: "facil") as? Facil{
            navigationController?.pushViewController(facil, animated: true)
        }
    }
    
    @IBAction func Medio(_ sender: Any) {
        if let medio = storyboard?.instantiateViewController(identifier: "medio") as? Medio{
            navigationController?.pushViewController(medio, animated: true)
        }
    }
    
    @IBAction func Dificil(_ sender: Any) {
        if let dificil = storyboard?.instantiateViewController(identifier: "dificil") as? Dificil{
            navigationController?.pushViewController(dificil, animated: true)
        }
    }
}

