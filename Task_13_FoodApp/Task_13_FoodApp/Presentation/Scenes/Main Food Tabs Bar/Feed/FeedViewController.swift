//
//  FeedViewController.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 11.10.21.
//

import UIKit

class FeedViewController: UIViewController {
    @IBOutlet weak var FoodPostTableView: UITableView!
    
    let cellSpacingHeight: CGFloat = 34
    
   static var foodPostsList:[FoodPost] = [
    
FoodPost(imgName: "img_Food_Big_1",imgNameURL: "https://media-cdn.tripadvisor.com/media/photo-s/1a/34/b6/90/vi-har-et-rikt-utvalg.jpg", personProfileIMGName: "p_profile_2",personProfileIMGNameURL: "https://media-cdn.tripadvisor.com/media/photo-s/1a/34/b0/82/avokado-og-spekeskinke.jpg", personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 3425435354),
FoodPost(imgName: "img_Breakfast_2",imgNameURL: "https://media-cdn.tripadvisor.com/media/photo-s/1a/34/a6/93/kake-til-bryllup.jpg", personProfileIMGName: "p_profile_3",personProfileIMGNameURL: "", personName: "Emma Slussen", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 45346547645),
FoodPost(imgName: "img_Food_Big_1",imgNameURL: "https://www.tine.no/_/recipeimage/w_2560%2Ch_1440%2Cc_fill%2Cx_2362%2Cy_1329%2Cg_xy_center/recipeimage/vhtintpc1cunugzrllrb.jpg", personProfileIMGName: "p_profile_2", personProfileIMGNameURL: "",personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 243234234),
FoodPost(imgName: "img_Breakfast_3",imgNameURL: "https://cdn.l-media.net/media/77/29996/587948-29996-l-67123yMe3aZe.jpg", personProfileIMGName: "p_profile_3",personProfileIMGNameURL: "", personName: "Suzii", postTitle: "String String String", isLoved: false),
FoodPost(imgName: "img_day_food",imgNameURL: "https://cdn.l-media.net/media/77/29996/587948-29996-l-67123yMe3aZe.jpg", personProfileIMGName: "p_profile_2", personProfileIMGNameURL: "",personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 5656456),
FoodPost(imgName: "img_Breakfast_2",imgNameURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-brownbutterchocolatechipcookie089-210201-sc-1612476612.jpg?crop=0.830xw:0.793xh;0.0816xw,0.140xh&resize=980:*", personProfileIMGName: "p_profile_3",personProfileIMGNameURL: "", personName: "Emma Slussen", postTitle: "Brownie with almonds and melted chocolate ", isLoved: true,foodID: 878678),
FoodPost(imgName: "img_Breakfast_1", imgNameURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/italian-christmas-cookie-recipe1-1631636369.jpg?crop=0.531xw:0.796xh;0.231xw,0.122xh&resize=980:*",personProfileIMGName: "p_profile_2",personProfileIMGNameURL: "", personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 897896453),
FoodPost(imgName: "img_Breakfast_3", imgNameURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/italian-christmas-cookie-recipe1-1631636369.jpg?crop=0.531xw:0.796xh;0.231xw,0.122xh&resize=980:*",personProfileIMGName: "p_profile_3",personProfileIMGNameURL: "", personName: "Suzii", postTitle: "String String String", isLoved: false,foodID: 123123334)

    
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //ეს აქ ქოლეცშენვიუთი უფრო კარგად გამოვიდოდა დდდდდდდდდ
        // Do any additional setup after loading the view.
        FoodPostTableView.dataSource = self
    }
}

extension FeedViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FeedViewController.foodPostsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodPostsTableViewCell", for: indexPath) as! FoodPostsTableViewCell
        
        print(indexPath.row)
        
        cell.configure(with: FeedViewController.foodPostsList[indexPath.row])
        
        return cell
    }
    
//    // Set the spacing between sections
//     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//          return  cellSpacingHeight
////      }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        // 1
//        let headerView = UIView()
//        // 2
//        headerView.backgroundColor = view.backgroundColor
//        // 3
//        return headerView
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return cellSpacingHeight
//    }
//
}

