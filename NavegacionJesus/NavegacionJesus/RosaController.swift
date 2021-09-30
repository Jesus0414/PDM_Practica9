//
//  ViewController.swift
//  NavegacionJesus
//
//  Created by Alumno on 9/29/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class RosaController: UIViewController {
    
    var nombre = ""
    var matricula = ""
    var promedio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doTapJose(_ sender: Any) {
        nombre = "Jose"
        matricula = "123321"
        promedio = "9.1"
        self.performSegue(withIdentifier: "goToVerde", sender: self)
    }
    
    @IBAction func doTapAna(_ sender: Any) {
        nombre = "Ana"
        matricula = "456654"
        promedio = "9.9"
        self.performSegue(withIdentifier: "goToVerde", sender: self)
    }
    
    @IBAction func doTapPedro(_ sender: Any) {
        nombre = "Pedro"
        matricula = "789987"
        promedio = "10.0"
        self.performSegue(withIdentifier: "goToVerde", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! VerdeController
        destino.nombre = nombre
        destino.matricula = matricula
        destino.promedio = promedio
        
    }
    
}

