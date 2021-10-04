//
//  ViewController.swift
//  Task_10
//
//  Created by MacBook Pro on 04.10.21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var languagesTable: UITableView!
    
    private var languages = [
        LanguageModel(title: "Already Swift", imageName: "String"),
        LanguageModel(title: "I can write Kotlin code", imageName: "String"),
        LanguageModel(title: "I can write Java code", imageName: "String"),
        LanguageModel(title: "I can write javascript code", imageName: "String"),
        LanguageModel(title: "I can write C# code", imageName: "String"),
        LanguageModel(title: "I can write C++ code", imageName: "String"),
        LanguageModel(title: "I can write python code", imageName: "String"),
        LanguageModel(title: "I can write Haskell code", imageName: "String"),
        LanguageModel(title: "I can write Dart code", imageName: "String")
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        languagesTable.dataSource = self
    }


}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell", for: indexPath) as! PLanguagesTableViewCell
        
        print(indexPath.row)
        
        cell.configure(with: languages[indexPath.row])
        
        return cell
    }
}
