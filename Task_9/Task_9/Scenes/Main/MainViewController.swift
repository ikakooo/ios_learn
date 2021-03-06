//
//  ViewController.swift
//  Task_9
//
//  Created by MacBook Pro on 02.10.21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var showText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var delegateFromSecondViewController: MainViewControllerDelegate?
    
    @IBAction func openSecondPage(_ sender: UIButton) {
        print((showText.text ?? "ika"))
        print((showText.text ?? "ika"))
        delegateFromSecondViewController?.staticText(Text: showText.text ?? "ika2")
//        performSegue(withIdentifier: "SecondViewController", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as? SecondViewController
            vc?.delegateFromMainViewController = self
    }

}

protocol SecondViewControllerDelegate: AnyObject {
    func inputed(Text: String)
}

extension MainViewController : SecondViewControllerDelegate {
    func inputed(Text: String){
        showText.text = Text
        print(Text+"1")
    }
    
}
