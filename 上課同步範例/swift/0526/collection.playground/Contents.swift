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
let _ = shoppingList.remove(at: 0)
print(shoppingList)
shoppingList[0]
let apples = shoppingList.removeLast()
for item in shoppingList{
    print(item)
}

