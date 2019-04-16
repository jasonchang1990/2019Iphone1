import UIKit

var someInts = [Int]()
print(someInts.count);
someInts.append(3)
someInts.append(4)
someInts.append(5)
print(someInts.count)


var threeDoubles = Array(repeating: 0.0, count: 30)


var anotherThreeDouble = Array(repeating: 2.5, count: 3)
var maxDoubles = threeDoubles + anotherThreeDouble;

var shoppingList:[String] = ["Eggs", "Milk"]

if shoppingList.isEmpty {
    print("is empty")
}else{
    print("我不是空的，我有\(shoppingList.count)")
}

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList[0] = "Six eggs"
shoppingList[4...6]

shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)
shoppingList

for item in shoppingList{
    print(item)
}

for (index,item) in shoppingList.enumerated(){
    print("這個索引編號是\(index),內容是\(item)");
}
