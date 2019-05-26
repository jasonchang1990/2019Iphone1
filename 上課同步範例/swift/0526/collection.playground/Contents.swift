import UIKit

var someInts = [Int]()
print(someInts.count)
someInts.append(3)
someInts = []

//建立的陣列要有default value
var threeDouble = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDouble + anotherThreeDoubles

var shoppingList = ["Eggs", "Milk"]
shoppingList.count
if shoppingList.isEmpty {
    print("空的");
}
shoppingList.append("Flour")
shoppingList += ["Baking Power"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

shoppingList[4...6] = ["Bananas", "Apples"]
print(shoppingList)
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList)
let _ = shoppingList.remove(at: 50)
    

print(shoppingList)
shoppingList[0]
let apples = shoppingList.removeLast()
for item in shoppingList{
    print(item)
}

for (index,value) in shoppingList.enumerated(){
    print("index:\(index),value:\(value)");
}


//set
var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("a")
letters.insert("c")
letters = []

var favoriteGenres:Set = ["Rock", "Classical", "Hip hop"]
favoriteGenres.count

favoriteGenres.insert("Jazz")
favoriteGenres

if let _ = favoriteGenres.remove("rock"){
    print("移除成功");
}else{
    print("移除失敗");
}


if favoriteGenres.contains("Funk"){
    print("有");
}else{
    print("沒有");
}

//set的運算
let oddDigits:Set = [1, 3, 5, 7, 9]
let evenDigits:Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers:Set = [2, 3, 5, 7]
var oddArray = oddDigits.union(evenDigits).sorted()
oddArray.sort(by: >)

oddDigits.intersection(evenDigits).sorted()

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()


//diction


