//
//  PLanguagesTableViewCell.swift
//  Task_10
//
//  Created by MacBook Pro on 04.10.21.
//

import UIKit

class PLanguagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewPicture: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    
    func configure(with item: LanguageModel) {
        imageViewPicture.image = UIImage(named: item.imageName)
        labelTitle.text = item.title
    }
}
