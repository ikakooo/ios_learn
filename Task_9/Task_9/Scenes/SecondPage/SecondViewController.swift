//
//  SecondViewController.swift
//  Task_9
//
//  Created by MacBook Pro on 02.10.21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
       // inputedText.text = "ika"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var inputedText: UITextField!
    
    var delegateFromMainViewController: SecondViewControllerDelegate?
    
    
    @IBAction func onClose(_ sender: UIButton) {
        delegateFromMainViewController?.inputed(Text: inputedText.text ?? "")
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as? MainViewController
            vc?.delegateFromSecondViewController = self
    }

}


protocol MainViewControllerDelegate: AnyObject {
    func staticText(Text: String)
}

extension SecondViewController : MainViewControllerDelegate {
    func staticText(Text: String){
        inputedText.text = Text
        print(Text+"0")
    }

}


