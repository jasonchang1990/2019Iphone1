import UIKit

struct FixedLengthRange{
    var firstValue:Int
    let length:Int
}

//var
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6


//當作常數的結構
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6;
print(rangeOfFourItems.firstValue)
print(rangeOfFourItems.length)
