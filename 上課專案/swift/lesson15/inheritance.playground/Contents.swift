import UIKit

class Vehicle{
    var currentSpeed = 0.0
    //每呼叫一次就會執行1次
    var description:String{
        return "現在的速度每小時多少\(currentSpeed)"
    }
    
    func makeNoick(){
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

