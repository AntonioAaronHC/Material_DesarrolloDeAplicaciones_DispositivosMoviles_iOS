//
//  Alumno.swift
//  Listas
//
//  Created by Facultad de Contaduría y Administración on 17/04/24.
//

import Foundation

struct Alumno{
    
    let nombre: String
    let apellido: String
    
}

struct Almacenamiento{
    static let alumnos = [
        Alumno(nombre: "Karina", apellido: "Damaris"),
        Alumno(nombre: "Aldo", apellido: "Ibarra"),
        Alumno(nombre: "Antonio", apellido: "Hernandez"),
        Alumno(nombre: "Jose", apellido: "Adams"),
        Alumno(nombre: "Diego", apellido: "Amaro")
    ]
}
