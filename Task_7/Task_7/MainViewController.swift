//
//  ViewController.swift
//  Task_7
//
//  Created by MacBook Pro on 27.09.21.
//

import UIKit

class MainViewController: UIViewController {

    var buttonColor : UIColor?
    
    @IBAction func colorButton(_ sender: UIButton) {
        buttonColor = sender.backgroundColor
        
        performSegue(withIdentifier: "performSegueColorButtonClick", sender: nil)
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControler =   segue.destination as? TextShowViewController
        viewControler?.backgroundColor = buttonColor
    
    }
    
}

