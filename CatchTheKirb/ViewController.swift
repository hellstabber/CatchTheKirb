//
//  ViewController.swift
//  CatchTheKirb
//
//  Created by Eren Kaplan on 11.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    var score = 0
    var timer = Timer()
    var counter = 0
    var kirbArray = [UIImageView]()
    var hideTimer = Timer()
    
    
    //Views
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var kirb1: UIImageView!
    @IBOutlet weak var kirb2: UIImageView!
    @IBOutlet weak var kirb3: UIImageView!
    @IBOutlet weak var kirb4: UIImageView!
    @IBOutlet weak var kirb5: UIImageView!
    @IBOutlet weak var kirb6: UIImageView!
    @IBOutlet weak var kirb7: UIImageView!
    @IBOutlet weak var kirb8: UIImageView!
    @IBOutlet weak var kirb9: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score \(score)"
        
        
        //Images
        kirb1.isUserInteractionEnabled = true
        kirb2.isUserInteractionEnabled = true
        kirb3.isUserInteractionEnabled = true
        kirb4.isUserInteractionEnabled = true
        kirb5.isUserInteractionEnabled = true
        kirb6.isUserInteractionEnabled = true
        kirb7.isUserInteractionEnabled = true
        kirb8.isUserInteractionEnabled = true
        kirb9.isUserInteractionEnabled = true
        
        let regognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let regognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        kirb1.addGestureRecognizer(regognizer1)
        kirb2.addGestureRecognizer(regognizer2)
        kirb3.addGestureRecognizer(regognizer3)
        kirb4.addGestureRecognizer(regognizer4)
        kirb5.addGestureRecognizer(regognizer5)
        kirb6.addGestureRecognizer(regognizer6)
        kirb7.addGestureRecognizer(regognizer7)
        kirb8.addGestureRecognizer(regognizer8)
        kirb9.addGestureRecognizer(regognizer9)
        
        
        kirbArray = [kirb1, kirb2, kirb3, kirb4, kirb5 ,kirb6, kirb7, kirb8, kirb9]
        
        
        //Timer
        counter = 10
        timeLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown) , userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideKirb), userInfo: nil, repeats: true)
        
        hideKirb()
        
    }
    
    @objc func hideKirb() {
        for kirb in kirbArray {
            kirb.isHidden = true
        }
        
        let random = Int(arc4random_uniform(UInt32(kirbArray.count - 1)))
        kirbArray[random].isHidden = false
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func countDown() {
        
        counter -= 1
        timeLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            for kirb in kirbArray {
                kirb.isHidden = true
            }
            
            //Alert
            
            let alert = UIAlertController(title: "Time's UP!", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) {
                (UIAlertAction) in
                //Replay function
                
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true)
        }
    }

}

