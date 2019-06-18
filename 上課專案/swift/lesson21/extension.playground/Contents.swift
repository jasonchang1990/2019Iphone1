import UIKit
/*
extension SomeType{
    
}
*/

/*
 extension SomeType:SomeProtocol, AnotherProtocol{
 }
 */
//Computed Property
extension Double{
    var km:Double{ return self * 1_000.0}
    var m:Double{ return self * 1_00.0}
    var cm:Double{ return self / 100.0}
    var mm:Double{ return self / 1_000.0}
    var ft:Double{ return self / 3.28084}
}

let oneInch = 25.5.mm;
print("One inch is \(oneInch) meters");

let threeFeet = 3.ft
print("Three feet is \(threeFeet)");


let aMarathon = 42.0.km + 195.0.m


//initializer
struct Size{
    var width = 0.0, height = 0.0;
}

struct Point{
    var x = 0.0, y = 0.0;
}

struct Rect{
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect();
let memberwistRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))

extension Rect{
    init(center:Point, size:Size){
        let originX = center.x - (size.width)/2;
        let originY = center.y - (size.height)/2;
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))

//method
extension Int{
    func repetition(task:()->Void){
        for _ in 0..<self{
            task()
        }
    }
}

3.repetition {
    print("Hello!")
}
