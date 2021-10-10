//
//  RegisterViewController.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var userNameFild: UITextField!
    @IBOutlet weak var passWordFild: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var errorAlert: UILabel!
    
    
    @IBAction func onRegisterButtonClick(_ sender: Any) {
        let userName = userNameFild.text ?? ""
        let passWord = passWordFild.text ?? ""
        
        if userName.count > 8 && passWord.count > 8 {
            print(userName)
            print(passWord)
            UDManager.saveUserAndMarkUserAsLoggedIn(user: User(username: userName, password: passWord))
          
            
            let sb = UIStoryboard(name: "DashboardViewController", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "Dashboard_Tab_Bar")
            
            vc.modalPresentationStyle = .fullScreen
           // present(vc, animated: true)
          //  navigationController?.viewControllers.removeAll()

            navigationController?.pushViewController(vc, animated: true)
        }else{
            errorAlert.text = "Username and password must be more than 8 character"
        }
    }

}
