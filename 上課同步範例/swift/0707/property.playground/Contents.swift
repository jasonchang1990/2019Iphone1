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

//lazy stored property
class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter();
    var data = [String]();
}

let manager = DataManager();
manager.data.append("some data")
manager.data.append("some more data")
print(manager.importer.filename);

