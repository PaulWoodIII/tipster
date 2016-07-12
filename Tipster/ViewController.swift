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
        priceTextField.text = "10.00"
        moodSlider.value = 50;
        updateView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var moodLabel: UILabel!
    
    @IBOutlet weak var totalLbel: UILabel!
    
    @IBOutlet weak var moodSlider: UISlider!
    
    @IBAction func moodSliderChanged(sender: AnyObject) {
        //Slider Changed so update the View
        updateView()
    }
    
    func updateView() {
        //Update the View
        
        
        //💩😵😞🤔😶😅😋🤑😍
        //0.0,0.03.,0.05,0.07,0.09,0.11,0.13,0.15,0.2
        
        var moodText : String!
        var tip : Float! = 0.0
        var mood : Float = moodSlider.value;
        
        if mood < 11 {
            moodText = "💩"
            tip = 0.0
        }
        else if mood < 22 {
            moodText = "😵"
            tip = 0.3
        }
        else if mood < 33 {
            moodText = "😞"
            tip = 0.6
        }
        else if mood < 44 {
            moodText = "🤔"
            tip = 0.9
        }
        else if mood < 55 {
            moodText = "😶"
            tip = 0.11
        }
        else if mood < 66 {
            moodText = "😅"
            tip = 0.15
        }
        else if mood < 77 {
            moodText = "😋"
            tip = 0.18
        }
        else if mood < 95 {
            moodText = "🤑"
            tip = 0.19
        }
        else /* if mood <= 100 */ {
            moodText = "😍"
            tip = 0.25
        }
        
        let price = Float(priceTextField.text!)!
        
        moodLabel.text = moodText
        print("priceTextField : \(priceTextField.text!) With tip: \(tip) and total: \(price + (price * tip) )")
        totalLbel.text = "\(price + (price * tip))";
    }
    
    
}

