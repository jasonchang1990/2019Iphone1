import UIKit

let somePoint = (x:3,y:0)
switch somePoint {
    case (0,0):
        print("0,0");
    case (_,0):
        print("y=0");
    case (0,_):
        print("x=0");
    case (-2...2,-2...2):
        print("-2...2,-2...2");
    default:
        print("其它");
}

//value binding

let anotherPoint = (2, 5)
switch anotherPoint{
    case (let x, 0):
        print("y是0,x是\(x)")
    case (0, let y):
        print("x是0,y是\(y)")
    case let (x,y):
        print("x是\(x),y是\(y)");
}

//binding + where 
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint{
    case let (x, y) where x==y:
        print("x==y")
    case let (x, y) where x == -y:
    print("x==-y")
    case let (x, y):
    print("x=\(x),y=\(y)")
    
}
