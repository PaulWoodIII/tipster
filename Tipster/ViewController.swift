//
//  ViewController.swift
//  Tipster
//
//  Created by Paul Wood on 7/11/16.
//  Copyright © 2016 Paul Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //💩😵😞🤔😶😅😋🤑😍
    
    
    @IBOutlet weak var greeting: UILabel!
    @IBOutlet weak var nameField: UITextField!

    @IBAction func sayHello(sender: AnyObject) {
        greeting.text = "Hello \( nameField.text! )";
    }
}

