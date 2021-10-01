//
//  HistoryViewController.swift
//  Task_8
//
//  Created by MacBook Pro on 01.10.21.
//

import UIKit

class HistoryViewController: UIViewController {
    
    var SetMathHistory:[String]? = []
    
    
    @IBOutlet weak var listOfHistorystackView: UIStackView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("SetMathHistory \( SetMathHistory)")
       // view.backgroundColor = UIColor.red
        
        if let MathHistory = SetMathHistory {
            for it  in MathHistory {
                //Text Label
                let textLabel = UILabel()
                textLabel.backgroundColor = UIColor.yellow
                textLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
                textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
                textLabel.text  = it
                textLabel.textAlignment = .center
                
              
                listOfHistorystackView.addArrangedSubview(textLabel)
                listOfHistorystackView.translatesAutoresizingMaskIntoConstraints = false
                
                //Constraints
                listOfHistorystackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
                listOfHistorystackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
                
            }
        }
        
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
