//
//  ViewController.swift
//  timerProject
//
//  Created by irem karakaplan on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer=Timer()
    var counter=0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter=10
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction(){
        timeLabel.text="Time: \(counter)"
        counter-=1
        if counter<0{
            //stop the timer
            timer.invalidate()
            
            timeLabel.text="Time is up!"
        }

    }



}

