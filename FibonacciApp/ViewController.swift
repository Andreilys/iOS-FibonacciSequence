//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Andrei on 12/23/14.
//  Copyright (c) 2014 Andrei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciSequence = FibonacciSequence(maxNumber: 2, includesZero: true)
    
    @IBAction func updateFibonacciSequence() {
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        textView.text = fibonacciSequence.values.description

    }
    

    
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    
    @IBOutlet weak var includesZeroLabel: UILabel!

    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()

        self.updateFibonacciSequence()
        
        if includesZeroSwitch.on {
            includesZeroLabel.text = "Yes"
        } else {
            includesZeroLabel.text = "No"
        }
        numberOfItemsLabel.text=String(Int(numberOfItemsSlider.value))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

