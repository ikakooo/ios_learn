//
//  HomeBarViewController.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import UIKit

class HomeBarViewController: UIViewController {
    
    let allUniqueLanguages = [
       LanguageModel(title: "Start Learning Swift", imageName: "logo_swift"),
       LanguageModel(title: "Start Learning Kotlin ", imageName: "logo_kotlin"),
       LanguageModel(title: "Start Learning Java ", imageName: "logo_java"),
       LanguageModel(title: "Start Learning javascript ", imageName: "logo_javascript"),
       LanguageModel(title: "Start Learning C# ", imageName: "logo_CSharp"),
       LanguageModel(title: "Start Learning C++ ", imageName: "logo_cpp"),
       LanguageModel(title: "Start Learning python ", imageName: "logo_python"),
       LanguageModel(title: "Start Learning Haskell ", imageName: "logo_haskell"),
       LanguageModel(title: "Start Learning Dart ", imageName: "logo_dart")
   ]
    
    private var languages = [LanguageModel]()
   
    
    @IBOutlet weak var learnLanguagesColectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        languages = (1...Int.random(in: 50..<400)).compactMap { _ in allUniqueLanguages.randomElement()}
        
        
        learnLanguagesColectionView.dataSource = self
        learnLanguagesColectionView.delegate = self
    
        
        learnLanguagesColectionView.register(
            UINib(nibName: "LearnLanguageVerticalCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: "LearnLanguageVerticalCollectionViewCell"
        )
    }

}

extension HomeBarViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       print(AllData.instance.languages().count)
        print(AllData.instance.languages().count)
        return languages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LearnLanguageVerticalCollectionViewCell", for: indexPath) as! LearnLanguageVerticalCollectionViewCell
        
        cell.SetViewsData(with: languages[indexPath.row])
        
        return cell
    }
}

extension HomeBarViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        print("ikakooo \(width)")
        return CGSize(
            width: width,
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

