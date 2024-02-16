//
//  ViewController.swift
//  BırthdayNoteTaker
//
//  Created by irem karakaplan on 9.09.2023.
//

import UIKit

class ViewController: UIViewController  {

    override func viewDidLoad() {
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedDate=UserDefaults.standard.object(forKey: "date")
//        if (storedName as? String) != nil{
//            namelabel.text="Name: \(storedName)"
//        } hatalı çözüm
//        if (storedDate as? String) != nil{
//            dateLabel.text="Birthday: \(storedDate)"
//        }
        if let newName=storedName as? String{
            namelabel.text="Name: \(newName)"
        }
        if let newDate=storedDate as? String{
            dateLabel.text="Date: \(newDate)"
        }
    }
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func button(_ sender: Any) {
        //were using ! bcs even if its emty its a string too
        namelabel.text="Name: \(nameTextField.text!)"
        dateLabel.text="Birthday: \(dateTextField.text!)"
        
        // were invoking the same object for every time
        UserDefaults.standard.set(namelabel.text!, forKey: "name")
        UserDefaults.standard.set(dateLabel.text!, forKey: "date")
    }
    
    @IBAction func deleyeButton(_ sender: Any) {
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedDate=UserDefaults.standard.object(forKey: "date")
        if (storedDate as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "date")
            dateLabel.text="Birthday:"
        }
        if(storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            namelabel.text="Name:"

        }
    
    }
    
}

