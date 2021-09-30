//
//  ViewController.swift
//  Task_8
//
//  Created by MacBook Pro on 30.09.21.
//

import UIKit
//import SwiftTryCatch

///Users/tbc/Desktop/CU/ios_learn/Task_8/Pods/SwiftTryCatch

class MainViewController: UIViewController {
    
   
    
    @IBOutlet weak var resultHistory: UILabel!

    @IBOutlet weak var mathLogicUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        resultHistory.set(text: "",rightIcon: UIImage(named: "ios-arrow-down"))
        
          //  goToHistoryPage.setImage(UIImage(named: "ios-arrow-down"), for: .normal)
      
    }
    
    var mathHistory = [String]()
    
    
    
    @IBAction func OpenCalculationHisoryPage(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goHistoryPage", sender: nil)
        
    }
    
    
    @IBAction func clickNumber(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "1":
            mathLogicUILabel.addTextInLabel(text: "1")
        case "2":
            mathLogicUILabel.addTextInLabel(text: "2")
        case "3":
            mathLogicUILabel.addTextInLabel(text: "3")
        case "4":
            mathLogicUILabel.addTextInLabel(text: "4")
        case "5":
            mathLogicUILabel.addTextInLabel(text: "5")
        case "6":
            mathLogicUILabel.addTextInLabel(text: "6")
        case "7":
            mathLogicUILabel.addTextInLabel(text: "7")
        case "8":
            mathLogicUILabel.addTextInLabel(text: "8")
        case "9":
            mathLogicUILabel.addTextInLabel(text: "9")
        case "0":
            mathLogicUILabel.addTextInLabel(text: "0")
        default:
            mathLogicUILabel.addTextInLabel(text: "")
        }
        
        
    }
    
    
    
    @IBAction func mathOperation(_ sender: UIButton) {
        
        switch sender.titleLabel?.text {
             case "C":
                mathLogicUILabel.text = ""
             case "+":
                mathLogicUILabel.addTextInLabel(text: "+")
             case "-":
                mathLogicUILabel.addTextInLabel(text: "-")
             case "=":
            
               // if let text = mathLogicUILabel.text {resultHistory.set(text: text,rightIcon: UIImage(named: "ios-arrow-down"))}
            
            resultHistory.text = mathLogicUILabel.text
                let isSucsessmath = mathLogicUILabel.MathCalculateAndSetResult
            if isSucsessmath {
                mathHistory.append("\(resultHistory.text ?? "")= \(mathLogicUILabel.text ?? "")")
            }
            
            print(mathHistory)
//            SwiftTryCatch.try({
//                     // try something
//                 }, catch: { (error) in
//                     print("\(error.description)")
//                 }, finally: {
//                     // close resources
//            })
            

             default:
                mathLogicUILabel.addTextInLabel(text: "")
        }
        
    }
    
    
    
    
    
    
    
    


}



extension UILabel {
    
    func regexValidator(Patern: String)->Bool{
        
        let result = self.text?.range(
            of: Patern,
            options: .regularExpression
        )

        let validUsername = (result != nil)
        
        print(validUsername)
        
       return (result != nil)
    }
    
    var MathCalculateAndSetResult:Bool{
        let mathTaskPatern = #"^[(]?[-]?([0-9]+)[)]??([(]?([-+/*]([0-9]))?([.,][0-9]+)?[)]?)*$"#

       
        if self.regexValidator(Patern: mathTaskPatern){
            
        
            if let Calculate = self.text {
              let expn =   NSExpression(format: Calculate)
              let expnX = expn.expressionValue(with: nil, context: nil)
                if let result:Int =  expnX as? Int {
                  self.text = String(result)
                    return true
              }
            }
            
            return false
        }else {
            self.text = "ERROR"
            return false
        }
        
    }
    
    func addTextInLabel(text:String){
       
        if let labelText = self.text {
            self.text = labelText + text
        }
        
    }

    func set(text:String, leftIcon: UIImage? = nil, rightIcon: UIImage? = nil) {

        let leftAttachment = NSTextAttachment()
        leftAttachment.image = leftIcon
        leftAttachment.bounds = CGRect(x: 0, y: -2.5, width: 40, height: 40)
        if let leftIcon = leftIcon {
            leftAttachment.bounds = CGRect(x: 0, y: -2.5, width: leftIcon.size.width, height: leftIcon.size.height)
        }
        let leftAttachmentStr = NSAttributedString(attachment: leftAttachment)

        let myString = NSMutableAttributedString(string: "")

        let rightAttachment = NSTextAttachment()
        rightAttachment.image = rightIcon
        print(bounds.size.width)
        rightAttachment.bounds = CGRect(x: 0, y: -5, width: 40, height: 40)
        let rightAttachmentStr = NSAttributedString(attachment: rightAttachment)


        if semanticContentAttribute == .forceRightToLeft {
            if rightIcon != nil {
                myString.append(rightAttachmentStr)
                myString.append(NSAttributedString(string: " "))
            }
            myString.append(NSAttributedString(string: text))
            if leftIcon != nil {
                myString.append(NSAttributedString(string: " "))
                myString.append(leftAttachmentStr)
            }
        } else {
            if leftIcon != nil {
                myString.append(leftAttachmentStr)
                myString.append(NSAttributedString(string: " "))
            }
            myString.append(NSAttributedString(string: text))
            if rightIcon != nil {
                myString.append(NSAttributedString(string: " "))
                myString.append(rightAttachmentStr)
            }
        }
        attributedText = myString
    }
}


