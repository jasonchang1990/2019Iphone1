import UIKit

func mixMax(array:[Int]) -> (min:Int, max:Int){
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

let bounds = mixMax(array: [8, -6, 2, 109, 3, 71])
