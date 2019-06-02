import UIKit
//一般的比對
let someCharacter:Character = "A"

switch someCharacter{
    case "a","A":
        print("a")
    case "z":
        print("b")
    default:
        print("other");
}

//數值範圍比對
let approximateCount = 622
switch approximateCount {
case 0:
    print("0");
case 1..<5:
    print("1-4");
case 5..<12:
    print("5-11");
case 12..<100:
    print("12-99");
case 100..<1000:
    print("100-999");
default:
    print("1000以上");
}

//tuple的比對
let somePoint = (0, 0);
switch somePoint{
    case(0, 0):
        print("0,0");
    case(_, 0):
        print("x線上");
    case(0,_):
        print("y線上");
    case(-2...2,-2...2):
        print("範圍內");
    default:
        print("超出範圍");
}
