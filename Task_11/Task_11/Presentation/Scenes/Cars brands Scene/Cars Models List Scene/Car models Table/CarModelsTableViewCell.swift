//
//  CarModelsTableViewCell.swift
//  Task_11
//
//  Created by MacBook Pro on 07.10.21.
//

import UIKit

class CarModelsTableViewCell: UITableViewCell {
    @IBOutlet weak var carModelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = generateRandomColor()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func generateRandomColor() -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return randomColor
    }
    
    
    func configure (with:Cars){
        carModelName.text = with.model
    }

}
