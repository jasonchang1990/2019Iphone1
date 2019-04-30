import UIKit

//default parameter value
func someFunction(parameterWithoutDefault:Int, parameterWithDefault:Int = 12){
    
}

someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 5)

//不限參數的數量
func arithmeticMean(_ numbers:Double...) -> Double{
    var total:Double = 0;
    for number in numbers{
        total += number;
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,3,4,5,6)
arithmeticMean(1.4,6,8,4.6,7.8)

//inout parameter
func swapTwoInt(_ a:inout Int,_ b:inout Int){
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3;
var anotherInt = 107;
swapTwoInt(&someInt, &anotherInt)
someInt
anotherInt
