//
//  ViewController.swift
//  serializacion
//
//  Created by Facultad de Contaduría y Administración on 31/05/24.
//

import UIKit

class ViewController: UIViewController {

    let storage = Storage()
    
    @IBOutlet weak var edtNombre: UITextField!
    
    
    @IBOutlet weak var edtTelefono: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let contacto = storage.getContacto() else { return }
        
        DispatchQueue.main.async {
            let alert = UIAlertController()
            alert.title = "Bienvenido"
            alert.message =
            """
            Nombre: \(contacto.nombre)
            Telefono: \(contacto.telefono)
            """
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            self.present(alert, animated: true)
            
        }
        
        
    }

    
    
    @IBAction func onSave(_ sender: Any) {
        
        guard let nombre = edtNombre.text else { return }
        guard let telefono = edtTelefono.text else { return }
        
        
        let contacto = Contacto(nombre: nombre , telefono: telefono)
        storage.saveContacto(contacto: contacto)
        clear()
        
    }
    func clear() {
        edtNombre.text = nil
        edtTelefono.text = nil
        
    }
    

}

