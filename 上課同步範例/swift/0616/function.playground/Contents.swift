import UIKit
//function
func minMax(array:[Int]) -> (min:Int,max:Int)?{
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//optional binding
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]){
    print("最小值是:\(bounds.min), 最大值:\(bounds.max)");
}

// nil運算子
//區塊變數
//let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) ?? (0,0)
func runMaxMin(){
    guard let bounds = minMax(array: []) else{
        print("出錯了");
        return;
    }
    print("最小值是:\(bounds.min), 最大值:\(bounds.max)");
    
}

runMaxMin();




//print("最小值是:\(bounds.min), 最大值:\(bounds.max)");

//參數和引數為相同名稱
func someFunction(firstParameterName:Int, secondParamterName:Int){
   //使用參數名稱
}

someFunction(firstParameterName: 5, secondParamterName: 6)

//自訂引數標籤名稱

func someFunction(argumentLabel parameterName:Int){
    //做用參數名稱
}

func someFunction(argumentLabel parameterName:String){
    //做用參數名稱
}

func someFunction(myString parameterName:String){
    //做用參數名稱
}


//呼叫時，使用引數名稱
someFunction(argumentLabel: 8)
someFunction(argumentLabel: "ab")
someFunction(myString: "cd")

//overload 多載
//1相同的function名稱
//2不同的參數數量
//3不同的資料類型
//4不同的引數名稱

//定義function時，可以告訴它，沒要有引數名稱
//objective-c,c

//定義沒有引數名稱
func someFunction(_ firstParameterName:Int, secondParamterName:Int){
    
}

someFunction(firstParameterName: 1, secondParamterName: 2)
someFunction(3, secondParamterName: 4)


//Default 參數值，一定會放在後面的參數
func someFunction(parameterWithoutDefault:Int, parameterWithDefault:Int  = 12){
    
}

//有參數的defualt值,代表呼叫方式變多了
someFunction(parameterWithoutDefault: 4, parameterWithDefault: 8)
someFunction(parameterWithoutDefault: 5)


