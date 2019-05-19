print("Hello!World")
//宣告變數
var myVariable = 42

print(myVariable)
myVariable = 50

let myConstant = 42

//明確宣告資料類型和不明確宣告資料類型(推測)
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70

let label = "The width is"
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

let apples = 3
let oranges = 5

//let appleSummary1 = "I have " + String(apples) + " apples and " + String(oranges) + " Oranges."
let appleSummary = "I have \(apples) apples and \(oranges) oranges."
print(appleSummary)

let fruitSummary = "I have \(apples+oranges) pieces of fruit"

let quotation = """
國中會考今（18日）下午國文科結束，這次題目包含飲食文化、生物科普和鄉土文學等，詩人吳晟的詩也入題。許多學生出了教室被問到難易度都說，雖然這次文言文少了很多，但白話文部分還是很難，需要看很多遍，才會懂在問什麼。

有學生表示，今年題目自己是覺得還好，跟平常模考差不多，不過，文言文雖然變少了，但白話文偏難，因為題目不好理解，要看好幾遍，才可能會懂。有同學則說，寫完所有題目大約還有7分鐘時間，文言文確實不太多，但有很多鄉土文學的題目，如吳晟的詩也入題。



原文網址: 國中會考／國文科文言文減少、白話文難懂　考生：題目充滿不確定性 | ETtoday生活 | ETtoday新聞雲 https://www.ettoday.net/news/20190518/1447544.htm#ixzz5oL32KK90
Follow us: @ETtodaynet on Twitter | ETtoday on Facebook"
"""
print(quotation)

//array
var shoppingList = ["catfish", "water", "tulips", "blue paint", "bottle"]
shoppingList[0]
shoppingList[1] = "bottle of water"
shoppingList[2]
shoppingList[3]
shoppingList[4]
print(shoppingList)

var occupations = [
    "Malcolm":"Captain",
    "Kaylee": "Mechanic"
]
occupations["Malcolm"]
occupations["Kaylee"]
occupations["Janye"] = "Public Relations"


