import UIKit

func greet(person:String) -> String{
   let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Anna"))
print(greet(person: "Brian"));

func greetAgain(person:String) -> String{
    return "Hello again, " + person + "!"
}

print(greetAgain(person: "Anna"));
