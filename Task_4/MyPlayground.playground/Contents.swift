import UIKit

enum Corner: CaseIterable {
    case left
    case right
    case top
    case bottom
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
    case middle
}


var corners = (1...10).compactMap { _ in Corner.allCases.randomElement() }

corners




print(" \n  \n\n\n corners მასივი გარდაქმენით ახალი სტრინგების მასივად.  ")
var newCorners:[String] = [String]()

corners.compactMap { it in newCorners.append(enumTostring(it)) }

print(newCorners)


func enumTostring( _ Cor:Corner)->String{
    
    switch Cor {
    
    case .left:
        return "left"
    case .right:
        return "right"
    case .top:
        return "top"
    case .bottom:
        return "bottom"
    case .topLeft:
        return "topLeft"
    case .topRight:
        return "topRight"
    case .bottomLeft:
        return "bottomLeft"
    case .bottomRight:
        return "bottomRight"
    case .middle:
        return "middle"
    }}


print("\n\n\n\n გაიგეთ არის თუ არა ყველა ელემენტი top ან bottom.  ")





if newCorners.count == newCorners.filter({ $0 == enumTostring(Corner.top) ||
                                            $0 == enumTostring(Corner.bottom) }).count
{
    print("ყველა ელემენტი top ან bottom-ია")
} else {
    print("ყველა ელემენტი არ არის top ან bottom-ი")
    
}

print("\n\n\n\n გაიგეთ შეიცავს თუ არა corners-ი მინიმუმ ორ right-ს. ")

let rights = newCorners.filter({ $0 == enumTostring(Corner.right)})

newCorners
rights

if 2 <= rights.count {
    print("შეიცავს corners-ი მინიმუმ ორ right-ს")
}else {print("არ შეიცავს corners-ი მინიმუმ ორ right-ს")}






print("\n\n\n\n გაიგეთ მასივის პირველ ნახევარში უფრო მეტი top არის თუ მეორე ნახევარში.")

var allCount = newCorners.count
var firstPart = [String]()
var secondPart = [String]()


(0..<allCount/2).compactMap { it in
    
    firstPart.append(newCorners[it])
    secondPart.append(newCorners[allCount-it-1])
    
}

var topsCountFromFirstPart = (firstPart.filter({ $0 == enumTostring(Corner.top)})).count
var topsCountFromSecondPart = (secondPart.filter({ $0 == enumTostring(Corner.top)})).count


switch true {
case topsCountFromFirstPart > topsCountFromSecondPart: print("პირველ ნახევარში უფრო მეტი top არის")
case topsCountFromFirstPart < topsCountFromSecondPart: print("მეორე ნახევარში უფრო მეტი top არის")
default : print(" თანაბარი რაოდენობით არის წარმოდგენილი ")
}


print("\n\n\n\n გაიგეთ corners-ში არსებული უნიკალური ელემენტების რაოდენობა.")

var uniqCorners:Set<String> = []

newCorners.compactMap { it in uniqCorners.insert(it) }

print("Count of Unique Elements: \(uniqCorners.count)")


print("\n\n\n\n წაშალეთ ყველა ელემენტი, რომელიც არ არის middle.")

var arr = corners.filter({ $0 == .middle })

arr


print("\n\n\n\n დაბეჭდეთ ელემენტები მანამ სანამ არ შეგვხვდება bottom.")
var findn = true

var filteredn: [()] = corners.compactMap{ it in  switch true {
case it == .bottom: findn = false; return nil
case findn : print(it); return nil
default: true}; return nil}


//for it in corners{
//    if it == .bottom {
//        break
//    }else {
//        print(it)
//    }
//}

print("\n\n\n\n გამოტოვეთ ელემენტები მანამ სანამ არ შეგვხვდება bottomLeft და დაბეჭდეთ დანარჩენი.")

var findx = false


var filteredx: [()] = corners.compactMap{ it in  switch true {
case it == .bottomLeft: findx = true
case findx : print(it)
default: true}; return nil}



//for it in corners{
//
//    switch true {
//    case it == .bottomLeft: find = true
//
//    case find : print(it)
//
//    default: continue
//    }
//}

print("\n\n\n\n იპოვეთ ყველა bottom ელემენტის ინდექსი.")
var indexes = [Int]()
corners
(0..<corners.count).compactMap { it in  if corners[it] == Corner.bottom{
    indexes.append(it)
} }


print(indexes)
