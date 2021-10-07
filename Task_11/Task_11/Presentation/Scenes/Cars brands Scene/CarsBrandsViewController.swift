//
//  CarsBandsViewController.swift
//  Task_11
//
//  Created by MacBook Pro on 07.10.21.
//

import UIKit

class CarsBrandsViewController: UIViewController {
    
    
    
//    var carsBrandsList :[String] = []
    fileprivate var cellIndexPathRow = 0
    
    
//    var uniqCorners
//
//    newCorners.compactMap { it in uniqCorners.insert(it) }
    
    

    @IBOutlet weak var CarsCollectionView: UICollectionView!
    
//    override func loadView() {
//        super.loadView()
//        var carsBrandsSet :Set<String> = []
//        AllData.instance.carsList.forEach{car in
//                    carsBrandsSet.insert(car.brand ?? "other")
//
//            }
//
//        carsBrandsList = carsBrandsSet.sorted()
//       }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(AllData.instance.carsList)
        //CarsCollectionView.backgroundColor = .black
        // Do any additional setup after loading the view.
        
        CarsCollectionView.dataSource = self
        CarsCollectionView.delegate = self
        
        CarsCollectionView.register(
            UINib(nibName: "CarsmodelCollectionViewVerticalCell", bundle: nil),
            forCellWithReuseIdentifier: "CarsmodelCollectionViewVerticalCell"
        )
    }
}

extension CarsBrandsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        cellIndexPathRow = indexPath.row
        performSegue(withIdentifier: "CarsModelsListViewController", sender: nil) // TODO
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControler =   segue.destination as? CarsModelsListViewController
        viewControler?.carBrand = AllData.instance.carsBrandsList()[cellIndexPathRow]
        print("taskkkkkkkk \(cellIndexPathRow)")
    }
}

extension CarsBrandsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AllData.instance.carsBrandsList().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarsmodelCollectionViewVerticalCell", for: indexPath) as! CarsmodelCollectionViewVerticalCell
        
        cell.SetViewsData(with: AllData.instance.carsBrandsList()[indexPath.row])
        
        return cell
    }
}

extension CarsBrandsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        print("ikakooo \(width)")
        return CGSize(
            width: CarsCollectionView.bounds.width,
            height:  45
        )
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
