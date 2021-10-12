//
//  FoodPostsTableViewCell.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 13.10.21.
//

import UIKit

class FoodPostsTableViewCell: UITableViewCell {
    @IBOutlet weak var postMainIMG: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var personProfilePhoto: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var postIsLoved: UIImageView!
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 37, right: 0))
//    }

    func configure (with:FoodPost){
        postMainIMG.image = UIImage(named: with.imgName)
        personProfilePhoto.image = UIImage(named: with.personProfileIMGName)
        postTitle.text = with.postTitle
        personName.text = with.personName
    }

}
