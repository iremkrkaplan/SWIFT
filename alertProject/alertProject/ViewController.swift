//
//  ViewController.swift
//  alertProject
//
//  Created by irem karakaplan on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nametext: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    @IBAction func signUpButton(_ sender: Any) {
        if nametext.text == ""{
            makeAlert(titleInput: "ERROR!", messageInput: "Please enter username")
        }else if passwordText.text == ""{
                    makeAlert(titleInput: "ERROR!", messageInput: "Please enter password")
        }else if passwordText2.text == "" {
                makeAlert(titleInput: "ERROR!", messageInput: "Please enter password again")
        }else if passwordText.text != passwordText2.text {
            makeAlert(titleInput: "ERROR!", messageInput: "Passwords did not match")
        }else{
            makeAlert(titleInput: "", messageInput: "You have registered successfully!")
        }
       
    }
    
    
    func makeAlert(titleInput:String,messageInput:String){
        let alert=UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let OkButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        alert.addAction(OkButton)
        self.present(alert, animated: true)
    }

}

