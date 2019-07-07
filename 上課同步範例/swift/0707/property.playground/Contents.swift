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


//computed property
struct Point{
    var x = 0.0, y = 0.0
}

struct Size{
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point();
    var size = Size();
    //computed propert 語法
    var center:Point{
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set{
            //newValue
            origin.x = newValue.x - (size.width / 2);
            origin.y = newValue.y - (size.height / 2);
        }
    }
}

var square = Rect(origin: Point.init(x: 0.0, y: 0.0), size: Size.init(width: 10.0, height: 10.0));
let initialSquareCenter = square.center;
print(initialSquareCenter.x)
print(initialSquareCenter.y)

square.center = Point(x: 15.0, y: 15.0)
print(square.origin.x);
print(square.origin.y);


//read-only computed propert
struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0;
    /*
    func valume() -> Double{
        return width * height * depth;
    }
 */
    var valume:Double{
        return width * height * depth;
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 3.0)

print(fourByFiveByTwo.valume);


//propety observer(一定要有store property)
class StepCounter{
    var totalStep:Int = 0 {
        willSet{
            print("現在傳進的值:\(newValue)");
        }
        
        didSet{
            if totalStep > oldValue{
                print("在現有的值下，增加了\(totalStep - oldValue)");
            }
        }
    }
}

let stepCounter = StepCounter();
stepCounter.totalStep = 200;

stepCounter.totalStep = 360;
stepCounter.totalStep = 896;
