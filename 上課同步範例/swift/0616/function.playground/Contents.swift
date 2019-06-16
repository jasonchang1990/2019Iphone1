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
