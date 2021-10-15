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
    @IBOutlet weak var postIsLoved: UIButton!
    
    //    var IsLoved:Bool = false
    
    var post:FoodPost?
    
    //    override func layoutSubviews() {
    //        super.layoutSubviews()
    //
    //        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 37, right: 0))
    //    }
    
    func configure (with:FoodPost){
        post = with
        postMainIMG.image = UIImage(named: with.imgName)
        personProfilePhoto.image = UIImage(named: with.personProfileIMGName)
        postTitle.text = with.postTitle
        personName.text = with.personName
        
       // if with.isLoved{postIsLoved.image = UIImage(named: with.imgName)}
        if with.isLoved {
            post?.isLoved = true
            postIsLoved.setImage(UIImage(named: "like"), for: .normal)
        } else {
            post?.isLoved = false
            postIsLoved.setImage(UIImage(named: "ic_heart"), for: .normal)
        }
    }
    
    
    @IBAction func onFavButtonClick(_ sender: UIButton) {
        if var post = post{
            post.isLoved.toggle()
            print("clikec heart button")
            
            if post.isLoved {
                postIsLoved.setImage(UIImage(named: "like"), for: .normal)
                
                NotificationCenter.default.post(
                    name: .userDidAddfavoriteFood,
                    object: self,
                    userInfo: ["favoriteFood": post]
                )
                
                UDManager.saveFavoriteFoodID(favFoodPostID: post.foodID)
            } else {
                postIsLoved.setImage(UIImage(named: "ic_heart"), for: .normal)
                
                NotificationCenter.default.post(
                    name: .userDidAddfavoriteFood,
                    object: self,
                    userInfo: ["favoriteFood": post]
                )
                UDManager.deleteFavoriteFoodID(favFoodPostID: post.foodID)
            }
        }
    }
    
    
}
