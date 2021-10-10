//
//  LearnLanguageVerticalCollectionViewCell.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import UIKit

class LearnLanguageVerticalCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    
    func SetViewsData(with language: LanguageModel) {
        logoImage.image = UIImage(named: language.imageName)
        labelText.text = language.title
    }

}
