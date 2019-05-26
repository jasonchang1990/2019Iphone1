import UIKit

let someString = "Some string literal value"
let quotation = """
NBA東部決賽關鍵第6戰，暴龍二連敗後三連勝，帶著聽牌的優勢回主場「關門」，在滿場的球迷助威下，地主軍不負眾望，雷納德轟下全場最高27分，率領暴龍100：94擊敗公鹿\(someString)，系列賽4：2晉級， 隊史首度殺進總冠軍賽，將在'冠軍'賽挑戰衛冕軍勇士。

公鹿第五戰曾浪費首節14分的領先遭逆轉。此役重蹈覆轍，第三節還取得全場最大15分的領先，卻又在第四節初就消耗殆盡。
"""

print(quotation)

var emptyString = "";
var anotherEmptyString = String();

if anotherEmptyString.isEmpty{
    print("空的");
}

var variableString = "Horse"
variableString += " and carriage"

for character in "Dog!🐶"{
    print(character)
}

let exclamationMark:Character = "!"
let catCharacters:[Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)

let greeting = "Hello,world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
let newString = String(beginning)
print(newString)


