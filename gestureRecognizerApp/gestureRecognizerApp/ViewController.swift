//
//  ViewController.swift
//  gestureRecognizerApp
//
//  Created by irem karakaplan on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    var isRick=true

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //making the image clickable
        imageView.isUserInteractionEnabled=true
        let gestureRecognizer=UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic(){
        if isRick{
            imageView.image=UIImage(named: "morty")
            nameLabel.text="Morty Smith"
            isRick=false
        }else{
            imageView.image=UIImage(named: "rickk")
            nameLabel.text="Rick Sanchez"
            isRick=true
        }
        
    }

}

