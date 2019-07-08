//
//  LoginController.swift
//  Practica 6
//
//  Created by Joel Garcia on 7/6/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    let user = "joel"
    let pass = "mti"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Login(_ sender: Any) {
        //1er paso: validar que los campos no esten vacios
        if (txtUser.text!.isEmpty || txtPassword.text!.isEmpty) {
            let alert = UIAlertController(title: "¡Cuidado!", message: "Llena todos los campos", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
            alert.addAction(UIAlertAction(title: "Ah ok", style:.destructive, handler: nil))
            
        }
            //2do paso: validar que los campos concuerden con la información
        else if (txtUser.text! == user && txtPassword.text! == pass) {
            
            
            //3er paso: realizar acción correspondiente
            performSegue(withIdentifier: "Opciones", sender: nil)
            let alert = UIAlertController(title: "¡Bienvenido!", message: "Credenciales correctas", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
            alert.addAction(UIAlertAction(title: "Aceptar", style:.default, handler: nil))}
            
            
        else{
            
            let alert = UIAlertController(title: "¡Error", message: "Credenciales incorrectas", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
            alert.addAction(UIAlertAction(title: "Reintentar", style:.destructive, handler: nil))
            
        }
        
        
    }
    
    
    @IBAction func forgptPassword(_ sender: Any) {
        let alert = UIAlertController(title: "¿Olvidaste tu contraseña?", message: "¿Quieres volver a intentar", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        alert.addAction(UIAlertAction(title: "¿Ya la encontraste?", style:.destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "¿Introduce la contraseña?", style:.default, handler: { (action) in
            print("¡Password denegado!")
        }))
        
    }
}

