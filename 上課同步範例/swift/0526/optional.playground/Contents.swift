import UIKit

var serverResponseCode:Int? = 404
//serverResponseCode!.byteSwapped
serverResponseCode = nil
//serverResponseCode!.byteSwapped

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

if convertedNumber != nil{
    print("轉換後的值是:\(convertedNumber!)");
}else{
     print("無法轉換");
}

if let actualNumber = Int(possibleNumber){
     print("轉換後的值是:\(actualNumber)");
}else{
    print("無法轉換");
}

if let firstNumber = Int("4"){
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber && secondNumber < 100{
            print("\(firstNumber) < \(secondNumber) < 100");
        }
    }
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100");
}

let possibleString:String? = "An optional string."
let forcedString:String = possibleString!

let assumedString:String! = "An implicitly unwrapped optional stirng."
let implicitStirng:String = assumedString;

if assumedString != nil {
    print(assumedString!);
}

if let definiteString = assumedString{
    print(definiteString)
}

func canThrowAnError() throws{
    
}

do{
    try canThrowAnError()
}catch{
    //有錯誤出現就請執行這裏
}

let age = -3
assert(age >= 0,"A person's age can't be less than zero")



