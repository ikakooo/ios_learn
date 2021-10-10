//
//  SettingsBarViewController.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import UIKit

class SettingsBarViewController: UIViewController {
    @IBOutlet weak var userSettingsTableView: UITableView!
    
    var settingsCredentials:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
        
        userSettingsTableView.dataSource = self
        
       let username = "Your Username is: \(UDManager.getUser()?.username ?? "")"
       let password = "Your Password is: \(UDManager.getUser()?.password ?? "")"
        
         settingsCredentials = [username,password]
    }
    
    @IBAction func logOutUser(_ sender: UIButton) {
        
        UDManager.markUserAsLoggedOut()
        
        
        let sb = UIStoryboard(name: "RegisterViewController", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "RegisterViewController")
        
        vc.modalPresentationStyle = .fullScreen
       // present(vc, animated: true)
        //navigationController?.viewControllers.removeAll()
//        print(navigationController?.viewControllers.count)

        navigationController?.setViewControllers([vc], animated: true)
        //print(navigationController?.viewControllers.count)
    }
}


extension SettingsBarViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsCredentials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        
        print(indexPath.row)
        
        cell.configure(with: settingsCredentials[indexPath.row])
        
        return cell
    }
}
