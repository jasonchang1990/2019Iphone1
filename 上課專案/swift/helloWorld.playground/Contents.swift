import UIKit

var myVariable = 50
myVariable = 42
let myConstant = 50
//myConstant = 42


let implictInteger = 70
let implictDouble = 70.0
let explicitDouble:Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)


let apples = 3;
let oranges = 5;

let appleSummary = "I have " + String(apples) + " apples  and " + String(oranges) + " oranges"

//字串插補
let appleSummary1 = "I have \(apples) apples and \(oranges) oranges"
let fruitSummary = "I have \(apples + oranges)pieces of fruit"


let quotation = """
《美國之音》報導，其實數年前中國就曾流傳，反匿蹤雷達發現並鎖定F-22匿蹤戰
機的說法，不過先前都被認為只是一種宣傳手法。但去年12月24日
，匿蹤雷達偵測專家吳劍旗在一次演講中證實，中國使用米波雷
達早就可對F-22進行遠距跟蹤，雖然過往有低仰角盲區大、精度達不到引導火控雷達，以及戰機對來襲目標進行攔截等缺陷
"""
print(quotation)

var shoppingList = ["catfish", "water", "tulips"];
shoppingList[0] = "bottle of water"
shoppingList[0]

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee": "Mechanic",
]

occupations["Malcolm"]
occupations["Kaylee"]
occupations["kaylee"]

