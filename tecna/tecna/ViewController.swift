//
//  ViewController.swift
//  tecna
//
//  Created by irem karakaplan on 6.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fairyImage: UIImageView!
    

    @IBAction func button(_ sender: Any) {
        fairyImage.image=UIImage(named: "tecna2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

