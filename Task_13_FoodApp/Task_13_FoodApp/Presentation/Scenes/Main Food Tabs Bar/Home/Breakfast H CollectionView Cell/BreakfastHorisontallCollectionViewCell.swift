//
//  BreakfastHorisontallCollectionViewCell.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 11.10.21.
//

import UIKit
import Kingfisher

class BreakfastHorisontallCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var foodTitle: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//
//
//    }
    
    
    
    func SetViewsData(with Food: Breakfast) {
        //foodImg.image = UIImage(named: Food.imgName)
        foodTitle.text = Food.titleDescreption
        loadIMGFromInternet(ImgURL: Food.imgNameURL)
    }
    
    
    func loadIMGFromInternet(ImgURL:String){
        let url = URL(string: ImgURL)
        let processor = DownsamplingImageProcessor(size: foodImg.bounds.size)
                     |> RoundCornerImageProcessor(cornerRadius: 20)
        foodImg.kf.indicatorType = .activity
        foodImg.kf.setImage(
            with: url,
            placeholder: UIImage(named: "img_day_food"),
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        {
            result in
            switch result {
            case .success(let value):
                print("Task done for: \(value.source.url?.absoluteString ?? "")")
            case .failure(let error):
                print("Job failed: \(error.localizedDescription)")
            }
        }
    }

}
