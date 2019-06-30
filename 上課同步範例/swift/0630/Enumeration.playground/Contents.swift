import UIKit

enum CompassPoint:String{
    case north
    case south
    case east
    case west
}

enum Planet:Int{
    case mercury=1, venus, earth, mars, jupiter, saturn, uranus, neptune;
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


//associate value
enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode{
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC:\(numberSystem),\(manufacturer), \(product),\(check)");
case .qrCode(let productCode):
    print("QR Code:\(productCode)");
}

//raw values
enum ASCIIControlCharacter:Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

if let possiblePlanet = Planet(rawValue: 7){
    print(possiblePlanet)
}

let earthsOrder = Planet.earth.rawValue;


let btn = UIButton(type: .custom);
