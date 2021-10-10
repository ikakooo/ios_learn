//
//  SettingsTableViewCell.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    @IBOutlet weak var credentialsTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = generateRandomColor()
    }

    func configure (with:String){
        credentialsTextLabel.text = with
    }
    
    
    func generateRandomColor() -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return randomColor
    }

}
