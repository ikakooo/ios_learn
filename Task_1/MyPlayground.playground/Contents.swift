import UIKit

var less:String = "ნაკლებია"
var more:String = "მეტია"
var resultToCompare:Int = 100
var numToCompare:Int? = 13

//Optional Chaining Examples:
// Examples 1
print("Examples 1")
if let numToCompare:Int = numToCompare {
    if numToCompare > resultToCompare{
        print("ეს რიცხვი \(more) \(resultToCompare)-ზე")
    }else{
        print("ეს რიცხვი \(less) \(resultToCompare)-ზე")
    }
}


// Examples 2
print("Examples 2")
if numToCompare! > resultToCompare{
    print("ეს რიცხვი \(more) \(resultToCompare)-ზე")
}else{
    print("ეს რიცხვი \(less) \(resultToCompare)-ზე")
}
