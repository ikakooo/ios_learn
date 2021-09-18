import UIKit


let numbers = [1,2,3,4,5,6,7,8,10]

///  მონაცემების გაფილტვრა
print("\n\n                                    Filter Array -> \n")
func filter(numbers: [Int],filterinLogic: (Int) -> Bool)->[Int]{
    var nums = [Int]()
    for it in numbers{
        if filterinLogic(it) {
            nums.append(it)
        }
    }
    return nums
}

print(filter(numbers: numbers) { $0.isMultiple(of: 2) })
print(filter(numbers: numbers) { $0.isMultiple(of: 3) })

print(filter(numbers: numbers) { $0 > 5 })
print(filter(numbers: numbers) { $0 > 10 })


print( numbers.filter { $0.isMultiple(of: 2) })
print( numbers.filter { $0.isMultiple(of: 3) })

print( numbers.filter { $0 > 5 })
print( numbers.filter { $0 > 10 })



///  მასივში მსგავსი თვისების მქონე ელემენტების რაოდენობის დათვლა
print("\n\n                                Same Spec Numbers Coumts -> \n")
func count(numbers: [Int],filterinLogic: (Int) -> Bool)->Int{
    var count: Int = 0
    for it in numbers{
        if filterinLogic(it) {
            count+=1
        }
    }
    return count
}

print("odd numbers Count: \(count(numbers: numbers) { $0.isMultiple(of: 2)})")


print("numbers count more than 10: \(count(numbers: numbers) { $0 > 10 })")



///

print("\n\n                                    Convert Array -> \n")
func map(numbers: [Int],filterinLogic: (Int) -> Int)->[Int]{
    var nums = [Int]()
    for it in numbers{
            nums.append(filterinLogic(it))
    
    }
    return nums
}

print("Converted Array: \(map(numbers: numbers) { $0 * 2 })")



//     პალინდრომი

let array = ["igi","209098","ABBA", "AKKA","ABBA", "AKKA", "1010"]

print("\n\n                                       Palindoms in Array -> \n")
func palindoms(words: [String]){
    var pals = [String]()
    for word in words{
            
        var reverse = ""

        for character in word {
            reverse = "\(character)" + reverse
        }

        if word == reverse {
            pals.append(word)
        }
    }
    
    let palsSize = pals.count
    var forPrint = "ამ მასივში არის \(palsSize) პალინდრომი - "
    
    
    for it in 0...palsSize-1 {
        switch it {
        case 0:
            forPrint += "\"\(pals[it])\""
            
        case palsSize-1:
            forPrint += " და \"\(pals[it])\""

        default:
            forPrint += ", \"\(pals[it])\""
        }
    }
    
    
    print (forPrint)
}


palindoms(words:array)
