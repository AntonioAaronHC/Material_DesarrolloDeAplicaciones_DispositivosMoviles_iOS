//
//  Storage.swift
//  serializacion
//
//  Created by Facultad de Contaduría y Administración on 31/05/24.
//

import Foundation

struct Storage {
    
    let userDefaults = UserDefaults()
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    let contactoKey = "Storage.Contacto.Key"
    
    
    func saveContacto(contacto: Contacto) {
        do{
            let data = try encoder.encode(contacto)
            userDefaults.setValue(data, forKey: contactoKey)
            userDefaults.synchronize()
        } catch {
            
        }
        
        
    }




    func getContacto() -> Contacto? {
        do {
            guard let data = userDefaults.data(forKey: contactoKey) else {return nil}
            let contacto = try decoder.decode(Contacto.self, from: data)
            return contacto
        } catch {
            return nil
        }
        
    }

}
