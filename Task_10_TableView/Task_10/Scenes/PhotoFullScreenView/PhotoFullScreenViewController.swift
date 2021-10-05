//
//  PhotoFullScreenViewController.swift
//  Task_10
//
//  Created by MacBook Pro on 05.10.21.
//

import UIKit

class PhotoFullScreenViewController: UIViewController {
    
    @IBOutlet weak var fullScreenImageView: UIImageView!
    
    
    var photo:String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if let photo = photo {
            fullScreenImageView.image = UIImage(named: photo)
        }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onBackButtonClick(_ sender: UIButton) {
        
        dismiss(animated: true)
    }

}
