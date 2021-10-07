//
//  CarsmodelCollectionViewVerticalCell.swift
//  Task_11
//
//  Created by MacBook Pro on 07.10.21.
//

import UIKit

class CarsmodelCollectionViewVerticalCell: UICollectionViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = generateRandomColor()
    }
    
    
    func SetViewsData(with text: String) {
//        imageViewPicture.image = UIImage(named: item.imageName)
        cellLabel.text = text
    }
    
    
    func generateRandomColor() -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return randomColor
    }

}
