import UIKit

func greet(person:String) -> String{
    let greeting = "Hello, " + person + "!"
    return greeting
}

func greetAgain(person:String) -> String{
    return "Hello again, " + person + "!"
}

//function 沒有參數
func sayHelloWorld() -> String{
    return "hello, world"
}

//function 有多個參數
func greet(person:String, alreadyGreeted:Bool) -> String{
    if alreadyGreeted {
        return greetAgain(person: person)
    }else{
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: true))

//function 沒有return值
func greet(person1:String){
    print("Hello, \(person1)");
}

greet(person1: "Dave")


