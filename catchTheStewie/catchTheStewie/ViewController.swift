//
//  ViewController.swift
//  catchTheStewie
//
//  Created by irem karakaplan on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    //let is immutable
    var score=0
    var timer=Timer()
    var highestScore=0
    var stewieArray=[UIImageView]()
    var counter=0
    var hideTimer=Timer()

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highestScoreLabel: UILabel!
    @IBOutlet weak var stewieImage1: UIImageView!
    @IBOutlet weak var stewieImag2: UIImageView!
    @IBOutlet weak var stewieImage3: UIImageView!
    @IBOutlet weak var stewieImage4: UIImageView!
    @IBOutlet weak var stewieImage5: UIImageView!
    @IBOutlet weak var stewieImage6: UIImageView!
    @IBOutlet weak var stewieImage7: UIImageView!
    @IBOutlet weak var stewieImage8: UIImageView!
    @IBOutlet weak var stewieImage9: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text="Score:\(score)"
        let storedHighestScore=UserDefaults.standard.object(forKey: "highestScore")
        
        if storedHighestScore==nil{
            highestScore=0
            highestScoreLabel.text="Highest Score:\(highestScore)"
        }
        
        if let newScore=storedHighestScore as? Int{
            highestScore=newScore
            highestScoreLabel.text="Highest Score:\(highestScore)"
        }
        
        let recognizer1=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer2=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer3=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer4=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer5=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer6=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer7=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer8=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        let recognizer9=UITapGestureRecognizer(target: ViewController.self, action: #selector(increaseScore))
        
        stewieImage1.addGestureRecognizer(recognizer1)
        stewieImag2.addGestureRecognizer(recognizer2)
        stewieImage3.addGestureRecognizer(recognizer3)
        stewieImage4.addGestureRecognizer(recognizer4)
        stewieImage5.addGestureRecognizer(recognizer5)
        stewieImage6.addGestureRecognizer(recognizer6)
        stewieImage7.addGestureRecognizer(recognizer7)
        stewieImage8.addGestureRecognizer(recognizer8)
        stewieImage9.addGestureRecognizer(recognizer9)

        stewieImage1.isUserInteractionEnabled=true
        stewieImag2.isUserInteractionEnabled=true
        stewieImage3.isUserInteractionEnabled=true
        stewieImage4.isUserInteractionEnabled=true
        stewieImage5.isUserInteractionEnabled=true
        stewieImage6.isUserInteractionEnabled=true
        stewieImage7.isUserInteractionEnabled=true
        stewieImage8.isUserInteractionEnabled=true
        stewieImage9.isUserInteractionEnabled=true
// stewieArray=[stewieImage1,stewieImag2,stewieImage3,stewieImage4,stewieImage5,stewieImage6,stewieImage6,stewieImage7,stewieImage8,stewieImage9]
//
        stewieArray.append(stewieImage1)
        stewieArray.append(stewieImag2)
        stewieArray.append(stewieImage3)
        stewieArray.append(stewieImage4)
        stewieArray.append(stewieImage5)
        stewieArray.append(stewieImage6)
        stewieArray.append(stewieImage7)
        stewieArray.append(stewieImage8)
        stewieArray.append(stewieImage9)
        
        counter=10
        timerLabel.text=String(counter)
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer=Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(hideStewie), userInfo: nil, repeats: true)
        
    }
    
    @objc func increaseScore(){
        score+=1
        scoreLabel.text="Score: \(score)"
    }
    @objc func countDown(){
        counter-=1
        timerLabel.text = String(counter)
        
        if counter==0{
            timer.invalidate()
            hideTimer.invalidate()
        }
        
        for stewie in stewieArray{
            stewie.isHidden=true
        }
        let alert=UIAlertController(title: "GAME OVER!", message: "Wanna play again?", preferredStyle: <#T##UIAlertController.Style#>)
        let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        let replayButton=UIAlertAction(title: "REPLAY", style: UIAlertAction.Style)
    }
    
    @objc func hideStewie(){
        for stewie in stewieArray{
            stewie.isHidden=true
        }
        let random=Int(arc4random_uniform(UInt32(stewieArray.count-1)))
        stewieArray[random].isHidden=false
    }
    

}

