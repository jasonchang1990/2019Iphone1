import UIKit

let http404Error = (404, "Not Found")

//拆解，取出tuple的成元
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)

let (justTheStatusCode, _) = http404Error //省略運算子
print(justTheStatusCode)

//索引法

print(http404Error.0)
print(http404Error.1)

//標籤法
let http200Status = (statusCode: 200, description:"OK")
http200Status.statusCode
http200Status.description


/*
let possibleNumber = "123";
let convertedNumber = Int(possibleNumber)

if convertedNumber != nil{
    print("轉換後的數值是:\(convertedNumber!)");
}else{
    print("轉換失敗");
}
*/
var serverResponseCode:Int? = 404;
serverResponseCode = nil;

let possibleNumber = "123a";
if let convertedNumber = Int(possibleNumber) {
    print("轉換後的數值為:\(convertedNumber)");
}else{
    print("轉換錯誤");
}





