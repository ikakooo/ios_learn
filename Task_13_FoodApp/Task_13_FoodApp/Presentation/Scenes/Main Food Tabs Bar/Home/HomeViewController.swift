//
//  HomeViewController.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 11.10.21.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController {
    
    @IBOutlet weak var breakfastCollectionView: UICollectionView!
    
    @IBOutlet weak var dayFoodReceptIMGView: UIImageView!
    
    
    let breakfasts = [
        Breakfast(imgName: "img_Breakfast_1",imgNameURL: "https://media-cdn.tripadvisor.com/media/photo-s/1a/34/b6/90/vi-har-et-rikt-utvalg.jpg", titleDescreption: "Sandwich with smoked ham"),
        Breakfast(imgName: "img_Breakfast_1",imgNameURL: "https://media-cdn.tripadvisor.com/media/photo-s/1a/34/b0/82/avokado-og-spekeskinke.jpg", titleDescreption: "Sandwich with smoked ham"),
        Breakfast(imgName: "img_Breakfast_1",imgNameURL: "https://media-cdn.tripadvisor.com/media/photo-s/1a/34/a6/93/kake-til-bryllup.jpg", titleDescreption: "Sandwich with smoked ham"),
        Breakfast(imgName: "img_Breakfast_2",imgNameURL: "https://www.tine.no/_/recipeimage/w_2560%2Ch_1440%2Cc_fill%2Cx_2362%2Cy_1329%2Cg_xy_center/recipeimage/vhtintpc1cunugzrllrb.jpg", titleDescreption: "Brownie with almonds and melted chocolate"),
        Breakfast(imgName: "img_Breakfast_3", imgNameURL: "https://cdn.l-media.net/media/77/29996/587948-29996-l-67123yMe3aZe.jpg",titleDescreption: "Sandwich with smoked ham"),
        Breakfast(imgName: "img_Breakfast_3", imgNameURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-brownbutterchocolatechipcookie089-210201-sc-1612476612.jpg?crop=0.830xw:0.793xh;0.0816xw,0.140xh&resize=980:*",titleDescreption: "Sandwich with smoked ham"),
        Breakfast(imgName: "img_Breakfast_3", imgNameURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/italian-christmas-cookie-recipe1-1631636369.jpg?crop=0.531xw:0.796xh;0.231xw,0.122xh&resize=980:*",titleDescreption: "Sandwich with smoked ham")
    ]
    
    private var breakfastsContainer = [Breakfast]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadIMGFromInternet()
        breakfastsContainer = (1...Int.random(in: 20..<50)).compactMap { _ in breakfasts.randomElement()}
        
        
        breakfastCollectionView.dataSource = self
        breakfastCollectionView.delegate = self
    
        
        breakfastCollectionView.register(
            UINib(nibName: "BreakfastHorisontallCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: "BreakfastHorisontallCollectionViewCell"
        )
    }
    
    func loadIMGFromInternet(){
        let url = URL(string: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/italian-christmas-cookie-recipe1-1631636369.jpg?crop=0.531xw:0.796xh;0.231xw,0.122xh&resize=980:*")
        let processor = DownsamplingImageProcessor(size: dayFoodReceptIMGView.bounds.size)
                     |> RoundCornerImageProcessor(cornerRadius: 20)
        dayFoodReceptIMGView.kf.indicatorType = .activity
        dayFoodReceptIMGView.kf.setImage(
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
