import UIKit

struct TimesTable{
    let multiplier:Int;
    subscript(index:Int) -> Int{
        return index * multiplier;
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6次的3是:\(threeTimesTable[6])");
