//
//  ViewController.swift
//  ImageProject
//
//  Created by Jacob Tamayo on 3/30/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    //created a varibale that hold the count of the image
    var imageNumber = 0
    
    var messages = ["hey", "Hello", "Bye", "SeeYa"]
    
    //This varibale will hold the count when you are clicking throuhg the array.
    var messageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeImageButtonPressed(_ sender: UIButton) {
        
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"

        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        
        //If the message number equals the total arrays in messages, than set message number back to 0
        if messageNumber == messages.count {
            messageNumber = 0
        }
        
       
        //This loads the image into the image view.
        imageView.image = UIImage(named: imageName)
        
        //Evertime you press the button, it adds one.
        imageNumber += 1
        
        //The reason you put 3 here instead of 2 is because the computer is counting 0, 1, 2
        //Which means that the number 2 is your 3rd picture you have.
        //This is a conditional
        if imageNumber == 3 {
            imageNumber = 0
        }
    }
    
}

