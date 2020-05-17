//
//  ViewController.swift
//  RandomNumber1752052015
//
//  Created by Douglas on 9/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func seedAction(_ sender: Any) {
        srandom(CUnsignedInt(time(nil)))
        randomNumberLabel.text = "Generator seended"
    }
    @IBAction func generateAction(_ sender: Any) {
        let generated = (arc4random() % 100 ) + 1
        randomNumberLabel.text = "\(generated)"
    }


}

