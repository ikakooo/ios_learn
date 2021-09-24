//
//  ViewController.swift
//  Task_6
//
//  Created by MacBook Pro on 24.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextInputFild: UITextField!
    @IBOutlet weak var textShowLabel: UILabel!
    

    @IBAction func OnButtonClick(_ sender: UIButton) {
        let textFrominput = TextInputFild.text
        
        
        /// თუ ლაბელი გასუფთავდება ისევ ძველი ტექსტი რომ დაბრუნდეს ბათონზე კლიკის შემდეგ
        if  textFrominput != "" {
            textShowLabel.text = textFrominput
        } else {
            textShowLabel.text = "Your text should appear here"
        }
        
    }
    
    @IBAction func fontSizeIncreaseSlider(_ sender: UISlider) {
        textShowLabel.font = textShowLabel.font.withSize(CGFloat(sender.value))
    }
    
    // ანდროიდ დეველოპმენტთან შედარებით ძაან მარტივი ჩანს :) გუუდ გუუგ გუუდ :)
    
}

