import UIKit

func mixMax(array:[Int]) -> (min:Int, max:Int)?{
    if array.isEmpty { return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1...]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value;
        }
    }
    
    return (currentMin, currentMax)
}

if let bounds = mixMax(array: [8, -6, 2, 109, 3, 71]){
    //optional binding
    print(bounds.max);
    print(bounds.min);
}

if let num = Int("123a"){
    print(num);
}
//定義一個function
func someFunction(firstParameter:Int, secondParameterName:Int){
    //參數名稱
}

func someFunction(first firstParameter:Int, secondParameterName:Int){
    //參數名稱
}

//呼叫
someFunction(firstParameter: 3, secondParameterName: 2)

func someFunction(argumentLabel parameterName:Int){
    
}

func greet(person:String, from hometown:String) -> String{
    return "您好\(person)! 很高你的參觀\(hometown)"
}

greet(person: "robert", from: "Taipei")

//overload
//1.不同的參數數量
//2.參數的資料類型不一樣
//3.不同的引數標籤名稱

//省略引數名稱
func someFunction(_ firstParameterName:Int,secondParameterName:Int){
    
}

someFunction(3, secondParameterName: 5)

//Default 參數名稱
func someFunction(parameterWithoutDefault:Int, parameterWithDefault:Int = 12){

}
someFunction(parameterWithoutDefault: 3)
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 5)

func arithmeticMean(_ numbers:Double...) -> Double{
    var total:Double = 0;
    for number in numbers{
        total += number;
    }
    return total/Double(numbers.count)
}

print(arithmeticMean(3.5, 67.4, 98.2, 35.7))

func swapTwoInts(a:inout Int, b:inout Int){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}

var someInt = 3;
var anotherInt = 107;
swapTwoInts(a: &someInt, b: &anotherInt)
print(someInt);
print(anotherInt)
