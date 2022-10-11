//
//  ViewController.swift
//  CatchTheKirb
//
//  Created by Eren Kaplan on 11.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    

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
        
        
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }

}

