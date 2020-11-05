//
//  ViewController.swift
//  tableView
//
//  Created by Alumno on 11/3/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit
//Implementar protocolos de Data Source y Delegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno]=[]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! celdaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text=alumnos[indexPath.row].matricula
        celda.lblCarrera.text=alumnos[indexPath.row].carrera
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 102
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alumnos.append(Alumno(nombre: "Basil Thai Restaurant & bar", matricula: "1175 folsom St, SoMa, Thai, Seafood, Salad", carrera: "MMm.. maybe i was really hungy. Maybe it was just really good. But ill be back if i´m in the area and looking for some Thai food"))
        alumnos.append(Alumno(nombre: "Basil Thai Restaurant & bar", matricula: "1175 folsom St, SoMa, Thai, Seafood, Salad", carrera: "MMm.. maybe i was really hungy. Maybe it was just really good. But ill be back if i´m in the area and looking for some Thai food"))
    // Do any additional setup after loading the view.
    }


}

