//
//  LogInViewController.swift
//  
//
//  Created by Snigdha Tiwari  on 11/07/2025.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logInPressed(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self?.performSegue(withIdentifier: K.logInSegue, sender: self)
                }
                guard self != nil else { return }
                // ...
            }
        }
    }
    
    
    

    }



