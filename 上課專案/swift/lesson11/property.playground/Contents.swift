import UIKit


//store property
struct FixedLengthRange{
    var firstValue:Int
    let length:Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6;


let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6;

//lazy store property
class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter();
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.importer.filename)


struct Student{
    let name:String;
    var math:Int;
    var chinese:Int;
    var english:Int;
    var sum:Int{
        get{
           return english + math + chinese
        }
    }
    
    var average:Double{
        get{
            return Double(sum) / 3.0
        }
    }
}

var stu1 = Student(name: "robert", math: 78, chinese: 67, english: 90)
print("stu1 的 sum是:\(stu1.sum)")
print("stu1 的 average是:\(stu1.average)")
stu1.math = 100;

print("stu1 的 sum是:\(stu1.sum)")
print("stu1 的 average是:\(stu1.average)")

struct Point{
    var _x = 0;
    var _y = 0;
    var x:Int{
        get{
            print("取出x");
            return _x;
        }
        
        set(newV){
            print("有值存進來:\(newV)");
            _x = newV;
        }
    }
    
    var y:Int{
        get{
            print("取出y");
            return _y;
        }
        
        set(newV){
            print("有值存進來:\(newV)");
            _y = newV
        }
    }
    
}

var point1 =  Point(_x: 3, _y: 5);
print("\(point1.x)");
point1.x = 10;
