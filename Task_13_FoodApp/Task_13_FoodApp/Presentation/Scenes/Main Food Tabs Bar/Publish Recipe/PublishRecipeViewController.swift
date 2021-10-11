//
//  PublishRecipeViewController.swift
//  Task_13_FoodApp
//
//  Created by MacBook Pro on 11.10.21.
//

import UIKit

class PublishRecipeViewController: UIViewController {
    @IBOutlet weak var foodPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let img = UIImage(named: "b_img") {
            foodPhoto.backgroundColor = UIColor(patternImage: img)}
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
