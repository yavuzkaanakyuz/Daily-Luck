//
//  ViewController.swift
//  Daily Luck
//
//  Created by Yavuz Kaan Akyüz on 10.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textMessage: UITextView!
    
    var message = "Your result will appear here."

    override func viewDidLoad() {
        super.viewDidLoad()
        textMessage.text = message
    }
    @IBAction func randomButto(_ sender: UIButton) {
        
        var number = Int.random(in: 1...100)

        switch number {
            case 80...100:
                message = "Awesome! You're extremely lucky today!"
            case 60...79:
                message = "Hey, looks like it's a normal day."
            case 40...59:
                message = "Meh, moderately lucky day."
            default:
                message = "It might be better not to gamble today."
        }
        
        textMessage.text = message
        
    }
    
    
    
    

}

