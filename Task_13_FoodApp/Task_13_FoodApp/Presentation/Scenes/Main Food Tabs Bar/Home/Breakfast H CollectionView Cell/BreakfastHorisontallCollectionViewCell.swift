//
//  BreakfastHorisontallCollectionViewCell.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 11.10.21.
//

import UIKit

class BreakfastHorisontallCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var foodTitle: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
    
    
    
    func SetViewsData(with Food: Breakfast) {
        foodImg.image = UIImage(named: Food.imgName)
        foodTitle.text = Food.titleDescreption
    }

}
