//
//  File.swift
//  Task_12
//
//  Created by MacBook Pro on 10.10.21.
//

import Foundation


struct UDManager {
    
    // MARK: - Keys
    
    private static let KEY_IS_USER_LOGGED_IN = "KEY_IS_USER_LOGGED_IN"
    private static let KEY_USER_CREDENTIAL_USERNAME = "KEY_USER_CREDENTIAL_USERNAME"
    private static let KEY_USER_CREDENTIAL_PASSWORD = "KEY_USER_CREDENTIAL_PASSWORD"
    
    private static var ud = UserDefaults.standard
    
    
    static func markUserAsLoggedOut() {
        ud.set(false, forKey: KEY_IS_USER_LOGGED_IN)
        ud.set("",forKey: KEY_USER_CREDENTIAL_USERNAME)
        ud.set("",forKey: KEY_USER_CREDENTIAL_PASSWORD)
    }
    
    static func isUserLoggedIn() -> Bool {
        ud.bool(forKey: KEY_IS_USER_LOGGED_IN)
        //return true
    }
    
    static func saveUserAndMarkUserAsLoggedIn(user: User) {
        ud.set(true, forKey: KEY_IS_USER_LOGGED_IN)
        ud.set(user.username,forKey: KEY_USER_CREDENTIAL_USERNAME)
        ud.set(user.password,forKey: KEY_USER_CREDENTIAL_PASSWORD)
    }
    
    static func getUser()->User?{
        let username =  ud.string(forKey: KEY_USER_CREDENTIAL_USERNAME) ?? ""
        let password =  ud.string(forKey: KEY_USER_CREDENTIAL_PASSWORD) ?? ""
        
        if !username.isEmpty && !password.isEmpty{
            return User(username: username,password: password)
        }else { return nil }
    }
    
}
