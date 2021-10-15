//
//  FavoritesViewController.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 14.10.21.
//

import UIKit

class FavoritesViewController: UIViewController {
    @IBOutlet weak var favoriteFoodTabel: UITableView!
    
    var cellIndexPath:IndexPath?
    
//    var FavoriteFoodPostsList:[FoodPost] = []
    
    private var FavoriteFoodPostsList:[FoodPost] = []

    
    ///
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(FavoriteFoodPostsList)
        
        print("\(UDManager.readAllFavoriteFoodID()) ikakoooo")
        
        
        FavoriteFoodPostsList = FeedViewController.foodPostsList.filter{itemm in
                      return itemm.foodID ==  UDManager.readAllFavoriteFoodID().filter{FoodID in
                           return itemm.foodID == FoodID
                      }.first
                   }
        for n in 0..<FavoriteFoodPostsList.count{ FavoriteFoodPostsList[n].isLoved = true}
        
        print("\(UDManager.readAllFavoriteFoodID()) ikakoooo")
        
        
        
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(favFoodDidReceive(_:)),
            name: .userDidAddfavoriteFood,
            object: nil
        )

        // Do any additional setup after loading the view.
        favoriteFoodTabel.dataSource = self
    }
    
    @objc func favFoodDidReceive(_ notification: Notification) {
        print("observer fun called")
        guard let userInfo = notification.userInfo,
              let favoriteFood = userInfo["favoriteFood"] as? FoodPost else { return }
        
        
        if favoriteFood.isLoved {
            FavoriteFoodPostsList.append(favoriteFood)
        }else {
            FavoriteFoodPostsList =  FavoriteFoodPostsList.filter{$0.foodID != favoriteFood.foodID}
        }
        
        print(favoriteFood)
        favoriteFoodTabel.reloadData()
//        if let cellIndexPath = cellIndexPath{
//            favoriteFoodTabel.reloadRows(at:  [cellIndexPath], with: .top)}
    }
    
}


extension FavoritesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FavoriteFoodPostsList.count //foodPostsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodPostsTableViewCell", for: indexPath) as! FoodPostsTableViewCell
        
        print(indexPath.row)
        cellIndexPath = indexPath
        
        cell.configure(with: FavoriteFoodPostsList[indexPath.row])
        
        return cell
    }
}
