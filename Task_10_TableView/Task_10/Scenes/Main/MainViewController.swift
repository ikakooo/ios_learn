//
//  ViewController.swift
//  Task_10
//
//  Created by MacBook Pro on 04.10.21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var languagesTable: UITableView!
    
    private var languages = [LanguageModel]()
    fileprivate var cellIndexPathRow = 0
    
    private var allUniqueLanguages = [
        LanguageModel(title: "Already Swift", imageName: "logo_swift"),
        LanguageModel(title: "I can write Kotlin code", imageName: "logo_kotlin"),
        LanguageModel(title: "I can write Java code", imageName: "logo_java"),
        LanguageModel(title: "I can write javascript code", imageName: "logo_javascript"),
        LanguageModel(title: "I can write C# code", imageName: "logo_CSharp"),
        LanguageModel(title: "I can write C++ code", imageName: "logo_cpp"),
        LanguageModel(title: "I can write python code", imageName: "logo_python"),
        LanguageModel(title: "I can write Haskell code", imageName: "logo_haskell"),
        LanguageModel(title: "I can write Dart code", imageName: "logo_dart")
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        languages = (1...30).compactMap { _ in allUniqueLanguages.randomElement()}
        
        languagesTable.dataSource = self
        languagesTable.delegate = self
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

extension MainViewController: UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellIndexPathRow = indexPath.row
        performSegue(withIdentifier: "PhotoFullScreenViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControler =   segue.destination as? PhotoFullScreenViewController
        viewControler?.photo = languages[cellIndexPathRow].imageName
        print("taskkkkkkkk \(cellIndexPathRow)")
    }
    
}

