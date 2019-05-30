import UIKit

//structure有default init,memberwise init
/*
struct Faherenheit{
    var temperature:Double
    init(){
        temperature = 32.0
    }
    
}
 */

struct Faherenheit{
    var temperature = 32.0;
}

var f = Faherenheit();
f.temperature;


struct Celsius{
    var temperatureInCelsius:Double;
    init(fromFahrenheit fahrenheit:Double){
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin:Double){
        temperatureInCelsius = kelvin - 273.15;
    }
    
    //使用取消引數名稱的定義
    init(_ celsius:Double){
        temperatureInCelsius = celsius;
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
print(boilingPointOfWater.temperatureInCelsius);

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print(freezingPointOfWater.temperatureInCelsius);

struct Color{
    let red, green, blue:Double;
    init(red:Double, green:Double, blue:Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white:Double){
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGraf = Color(white: 0.5)

//let veryGreen = Color(0.0, 1.0, 0.0)
let bodyTemperature = Celsius(37.0)

class SurveyQuestion{
    let text:String
    var response:String?
    init(text:String){
        self.text = text;
    }
    
    func ask(){
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.response = "Yes, I do like cheese."

//default Initializers
class ShoppingListItem{
    var name:String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem();



//struct
struct Size{
    var width = 0.0, height = 0.0
}

//memberwise init
let twoByTwo = Size(width: 2.0, height: 2.0)

struct Point{
    var x = 0.0, y = 0.0
}

struct Rect{
    var origin = Point();
    var size = Size();
    init(){
    }
    
    init(origin:Point, size:Size){
        self.origin = origin
        self.size = size
    }
    
    init(center:Point, size:Size){
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point.init(x: originX, y: originY), size: size)
    }
}

//let basicRect = Rect(origin: Point.init(x: 2.0, y: 2.0), size: Size.init(width: 5.0, height: 5.0))

let originRect = Rect(center: Point.init(x: 2.0, y: 2.0), size: Size.init(width: 5.0, height: 5.0))
originRect.origin.x
originRect.origin.y
originRect.size.width
originRect.size.height





