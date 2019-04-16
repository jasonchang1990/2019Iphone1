import UIKit

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
//print(convertedNumber!)

//第1種 使用if檢查，再force unwrapping
if convertedNumber != nil {
    print(convertedNumber!)
}else{
    print("轉換錯誤");
}

//第2種 使用optional binding(同時檢查，自動force wrapping)
// if let 常數名 = optional type{
// }
//optional binding
if let convertedNumber1 = Int(possibleNumber){
    print(convertedNumber1);
}else{
    print("轉換錯誤")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"),firstNumber < secondNumber && secondNumber < 100 {
    print(firstNumber);
    print(secondNumber);
}
