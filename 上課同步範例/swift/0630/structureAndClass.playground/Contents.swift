import UIKit

struct Resolution{
    var width = 0;
    var height = 0;
}


class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

let someResolut = Resolution();
let someVideoMode = VideoMode();
print(someResolut.width);
print(someResolut.height);
print(someVideoMode.resolution.width);
print(someVideoMode.resolution.height);
someVideoMode.resolution.width = 1280;
print(someVideoMode.resolution.width);

//結構類型有智慧型初始化
let vga = Resolution(width: 640, height: 480)

//enum,structure(Int,Float,Double,String,Array,Dictionary,Bool)
//什麼叫value type
let hd = Resolution(width: 1920, height: 1080);
var cinema = hd;
cinema.width = 2048;
print(cinema.width);
print(hd.width)


enum CompassPoint{
    case north, south, east, west;
    mutating func turnNorth(){
        self = .north;
    }
}

var currentDirection = CompassPoint.west

let rememberedDirection = currentDirection

currentDirection.turnNorth();

rememberedDirection
currentDirection

//class和closure
//什麼是reference type

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty;
alsoTenEighty.frameRate = 30.0
tenEighty.frameRate;
