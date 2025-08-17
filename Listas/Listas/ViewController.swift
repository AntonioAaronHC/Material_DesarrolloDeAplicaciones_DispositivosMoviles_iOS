//
//  ViewController.swift
//  Listas
//
//  Created by Facultad de Contaduría y Administración on 17/04/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Cuantas filas va a tener la tabla
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
        return Almacenamiento.alumnos.count
    }
    
    //Cuantas secciones va a tener
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda") as? Celda {
            let alumno = Almacenamiento.alumnos[indexPath.row]
            celda.lblTitle.text = "\(alumno.nombre) \(alumno.apellido)"
            return celda
        }
        return UITableViewCell()
    }
    
    //
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
        index = indexPath.row
        performSegue(withIdentifier: "detalle", sender: nil) //"detalle" se referencia en la línea del viewController
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalle"{
            if let vc = segue.destination as? ViewControllerDetalle{
                vc.index = index
            }
        }
    }

}

