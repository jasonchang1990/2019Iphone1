import UIKit

class Vehicle{
    var currentSpeed = 0.0
    //每呼叫一次就會執行1次
    var description:String{
        return "現在的速度每小時\(currentSpeed)公里"
    }
    
    func makeNoice(){
        //發出聲音
    }
}

class Bicycle:Vehicle{
    var hasBasket = false
}


let someVehicle = Vehicle()
let bicycle = Bicycle()
bicycle.currentSpeed = 15.0
print("Bicycle:\(bicycle.description)");

class Tandem:Bicycle{
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true;
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0

class Train:Vehicle{
    override func makeNoice(){
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoice()

class Car:Vehicle{
    var gear = 1
    override var description: String{
        return super.description + " 目前是\(gear)檔"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car:\(car.description)");

class AutomaticCar:Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0;
print("automaticCar.\(automatic.description)");

