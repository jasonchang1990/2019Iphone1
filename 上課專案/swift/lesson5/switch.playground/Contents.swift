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

