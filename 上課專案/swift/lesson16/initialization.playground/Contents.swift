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



