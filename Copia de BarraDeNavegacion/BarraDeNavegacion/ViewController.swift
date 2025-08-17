//
//  ViewController.swift
//  BarraDeNavegacion
//
//  Created by Facultad de Contaduría y Administración on 12/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dificil(_ sender: Any) {
        if let dificil = storyboard?.instantiateViewController(identifier: "dificil") as? ViewController4{
                navigationController?.pushViewController(dificil, animated: true)
            }
    }
    
    @IBAction func VC3(_ sender: Any) {
        if let vc3 = storyboard?.instantiateViewController(identifier: "vc3") as? ViewController3{
                navigationController?.pushViewController(vc3, animated: true)
            }
    }
    
    @IBAction func VC2(_ sender: Any) {
        if let vc2 = storyboard?.instantiateViewController(identifier: "vc2") as? ViewController2{
                navigationController?.pushViewController(vc2, animated: true)
            }
        
    }
    
    
}

