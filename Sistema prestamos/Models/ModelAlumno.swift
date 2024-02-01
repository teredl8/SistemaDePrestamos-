//
//  Alumno.swift
//  Sistema prestamos
//
//  Created by Tere Durán on 19/01/24.
//

import CoreData
import UIKit

class ModelAlumno {
    func contexto() -> NSManagedObjectContext {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }
    
    func saveData(nombre: String, apellidoPaterno: String, apellidoMaterno: String, numeroCuenta: String, facultad: String, carrera: String, materiaYGrupo: String) {
        let context = contexto()
        let entityAlumno = NSEntityDescription.insertNewObject(forEntityName: "Alumno", into: context) as! Alumno
        entityAlumno.nombre = nombre
        entityAlumno.apellido_paterno = apellidoPaterno
        entityAlumno.apellido_materno = apellidoMaterno
        entityAlumno.numero_cuenta = numeroCuenta
        entityAlumno.facultad = facultad
        entityAlumno.carrera = carrera
        entityAlumno.materia_grupo = materiaYGrupo
        
        do {
            try context.save()
            print("Se guardó correctamente la información")
        } catch let error as NSError {
            print("No se guardó la información", error.localizedDescription)
        }
    }
}
