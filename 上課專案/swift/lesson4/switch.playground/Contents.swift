import UIKit

let someCharacter:Character = "z"

switch someCharacter{
    case "a":
        print("a")
    
    case "z":
        print("z")
    
    default:
        print("b~y")
}

let anotherCharacter:Character = "B"
switch anotherCharacter {
case "a","A":
    print("a,A");
case "b","B":
    print("b,B")
default:
    print("其它");
}

//interval Matching

let approximateCount = 145
switch approximateCount {
case 0:
    print("0")
case 1..<5:
    print("1~4")
case 5..<12:
    print("5..11")
case 12..<100:
    print("12..99")
case 100..<1000:
    print("100..999");
default:
    print(">1000");
}
