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


//什麼叫value type
