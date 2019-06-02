import UIKit

//自訂function
func greet(person:String) -> String{
    let greeting = "Hello, " + person + "!"
    return greeting;
}

print(greet(person: "Robert"))
print(greet(person: "Alan"));

func greetAgain(person:String) -> String{
    return "hello again " + person + "!"
}

print(greetAgain(person: "Robert"));

