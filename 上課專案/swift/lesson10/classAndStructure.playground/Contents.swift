import UIKit

struct SomeStructure{
    
}

class SomeClass{
    
}

var width = 0;

struct Resolution{
    //property
    var width = 0;
    var height = 0;
    
}

class VideoMode{
    var resolution = Resolution();
    var interlaced = false;
    var frameRate = 0.0;
    var name:String?
}

let someResolution = Resolution()
print(someResolution.width);
print(someResolution.height)

let someVideoMode = VideoMode()
someVideoMode.resolution.width = 1280
someVideoMode.resolution.height
someVideoMode.resolution.width = 1280

let vga = Resolution(width: 640, height: 480)
vga.width;
vga.height

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd;
cinema.width = 2048
hd.width

enum CompassPoint{
    case north, south, east, west
    mutating func turnNorth(){
        self = .north;
    }
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection;
currentDirection.turnNorth();
print(currentDirection)

print(rememberedDirection)


