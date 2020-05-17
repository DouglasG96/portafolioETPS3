//
//  ViewController.swift
//  RandomNumberDelegate1752052015
//
//  Created by Douglas on 16/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GuessDelegate {
    @IBOutlet weak var userGuessLabelOutlet: UILabel!
    @IBOutlet weak var outComeLabelOutlet: UILabel!
    @IBOutlet weak var playAgainButtonOutlet: UIButton!
    @IBOutlet weak var guessButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playAgainAction(_ sender: Any) {
        //createRandomNumber()
        playAgainButtonOutlet.isHidden = true
        guessButtonOutlet.isHidden = false
        outComeLabelOutlet.text = ""
        userGuessLabelOutlet.text = "New Game"
        //previousGuess = ""
    }
    
    func userDidFinish(_ controller: GuessInputViewController, guess: String)
    {
        userGuessLabelOutlet.text = "The Guess was " + guess
        previeousGuess = guess
        let numberGuess = Int(guess)
        if(numberGuess! > randomNumber){
            outComeLabelOutlet.text = "Guess too high"
        }
        else if(numberGuess < randomNumber)
        {
            outComeLabelOutlet.text = "Guess too low"
        }
        else
        {
            outComeLabelOutlet.text = "Guess is correct"ç
            playAgainButtonOutlet.isHidden = false
            guessButtonOutlet.isHidden = true
        }
        
        if let navController = self.navigationController{
            navController.popViewController(animated: true)
        }
    }
    
    func createRandomNumber(){
        randomNumber = Int(arc4random.uniform(100))
        print ("The random number is: (randomNumber)")
        return
    }

}

