import UIKit

enum CompassPoint{
    case north
    case south
    case east
    case west
}

enum Planet{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune;
}

var directionToHead = CompassPoint.west;
//directionToHead = .east;

//如何查出列舉實體內所存放的成員
switch directionToHead{
    case .north:
        print("north")
    case .south:
        print("south")
    case .east:
        print("east")
    case .west:
        print("west")
}

let somePlanet = Planet.earth
switch somePlanet{
    case .earth:
        print("earth");
    default:
        print("other planet");
}


//iterating Enumeration Case
enum Beverage:CaseIterable{
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases{
    print(beverage)
}
