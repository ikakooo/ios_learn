//
//  HomeViewController.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 11.10.21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var breakfastCollectionView: UICollectionView!
    
    
    
    let breakfasts = [
        Breakfast(imgName: "img_Breakfast_1", titleDescreption: "Sandwich with smoked ham"),
        Breakfast(imgName: "img_Breakfast_2", titleDescreption: "Brownie with almonds and melted chocolate"),
        Breakfast(imgName: "img_Breakfast_3", titleDescreption: "Sandwich with smoked ham")
    ]
    
    private var breakfastsContainer = [Breakfast]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        breakfastsContainer = (1...Int.random(in: 20..<50)).compactMap { _ in breakfasts.randomElement()}
        
        
        breakfastCollectionView.dataSource = self
        breakfastCollectionView.delegate = self
    
        
        breakfastCollectionView.register(
            UINib(nibName: "BreakfastHorisontallCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: "BreakfastHorisontallCollectionViewCell"
        )
    }
}


extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return breakfastsContainer.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreakfastHorisontallCollectionViewCell", for: indexPath) as! BreakfastHorisontallCollectionViewCell
        
        cell.SetViewsData(with: breakfastsContainer[indexPath.row])
        
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        print("ikakooo \(width)")
        return CGSize(
            width: width - 16 - 16,
            height:  45
        )
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
}
