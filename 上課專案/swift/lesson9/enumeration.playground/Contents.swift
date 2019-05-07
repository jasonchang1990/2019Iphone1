import UIKit

enum SomeEnumeration{
    //成員
}
//定義一個工廠
enum CompassPoint{
    case north
    case south
    case east
    case west
}
//定義一個工廠
enum Planet:Int{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print(Planet.earth.rawValue)

//實作一個實體
var directionToHead = CompassPoint.west
directionToHead = .east
directionToHead = .south

switch directionToHead {
    case .north:
        print("north");
    case .south:
        print("south");
    case .east:
        print("east");
    case .west:
        print("west");
}

let button = UIButton(type: .infoLight)

//建立可以被for in 的列舉
enum Beverage:CaseIterable{
    case coffee, tea, juice
}
print(Beverage.allCases.count)

for beverage in Beverage.allCases{
    print(beverage)
}



