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



