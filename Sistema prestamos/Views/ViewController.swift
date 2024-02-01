//
//  ViewController.swift
//  Sistema prestamos
//
//  Created by Tere Durán on 13/01/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var tablaAlumnos: UITableView! {
        didSet {
            tablaAlumnos.register(UINib(nibName: "AlumnoTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaAlumnos.dataSource = self
    }

    @IBAction func agregarAlumno(_ sender: Any) {
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Celdas resusables
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AlumnoTableViewCell
        
        
        
        return cell!
    }
}

