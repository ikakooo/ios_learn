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
    
FoodPost(imgName: "img_Food_Big_1", personProfileIMGName: "p_profile_2", personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 3425435354),
FoodPost(imgName: "img_Breakfast_2", personProfileIMGName: "p_profile_3", personName: "Emma Slussen", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 45346547645),
FoodPost(imgName: "img_Food_Big_1", personProfileIMGName: "p_profile_2", personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 243234234),
FoodPost(imgName: "img_Breakfast_3", personProfileIMGName: "p_profile_3", personName: "Suzii", postTitle: "String String String", isLoved: false),
FoodPost(imgName: "img_day_food", personProfileIMGName: "p_profile_2", personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 5656456),
FoodPost(imgName: "img_Breakfast_2", personProfileIMGName: "p_profile_3", personName: "Emma Slussen", postTitle: "Brownie with almonds and melted chocolate ", isLoved: true,foodID: 878678),
FoodPost(imgName: "img_Breakfast_1", personProfileIMGName: "p_profile_2", personName: "Eva Karlsson", postTitle: "Brownie with almonds and melted chocolate ", isLoved: false,foodID: 897896453),
FoodPost(imgName: "img_Breakfast_3", personProfileIMGName: "p_profile_3", personName: "Suzii", postTitle: "String String String", isLoved: false,foodID: 123123334)

    
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

