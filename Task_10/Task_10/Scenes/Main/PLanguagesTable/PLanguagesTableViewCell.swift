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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func configure(with item: LanguageModel) {
//        labelTitle.text = item.text
//        labelText.text = item.text
    }
}
