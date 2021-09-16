import UIKit

var range_100_To_200 = 100...200

// კენტი რიცხვების დაბეჭვდა :
// მაგალითი 1
print("------კენტი რიცხვების დაბეჭდვის მაგალითი 1------")
for it in range_100_To_200{
    if it%2 == 1 {
        print(it)
    }
}
// მაგალითი 2
print("------კენტი რიცხვების დაბეჭდვის მაგალითი 2------")
for it in stride(from: 101, to: 200, by: 2){
    print(it)
}

// მასივები
print("------------------მასივები------------------")

var randomNumbers:Array = [Int]()
var unicNumbersFromRandomNumbers:Set<Int> = []

for _ in 1...50{
    randomNumbers.append(Int.random(in: 100...200))
}

//მასივის ელემენტების სეტში ჩაყრა
for it in randomNumbers{
    unicNumbersFromRandomNumbers.insert(it)
}
randomNumbers
unicNumbersFromRandomNumbers.sorted()

print("---------------------მასივი: \(randomNumbers)")
print("უნიკალური ელემენტების მასივი: \(unicNumbersFromRandomNumbers)")
print("უნიკალური რიცხვების რაოდენობა მასივში: \(unicNumbersFromRandomNumbers.count)")

