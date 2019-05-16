import UIKit

struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0;
    
    //read only computed property
    var volume:Double{
        get{
            return width * height * depth;
        }
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTwo.volume);

//property observer
class StepCounter{
    var totalSteps:Int = 0{
        willSet{
            print("現在存進來的值是:\(newValue)");
        }
        didSet{
            if totalSteps > oldValue {
                print("你原本的值是\(oldValue),新的值是\(totalSteps),增加了:\(totalSteps - oldValue)");
            }
        }
    }
}

let stepCounter = StepCounter();
stepCounter.totalSteps = 200


