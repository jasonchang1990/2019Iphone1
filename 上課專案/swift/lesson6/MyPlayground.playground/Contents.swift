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


func printAndCount(string:String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string:String){
    let _ = printAndCount(string: string)
}

printWithoutCounting(string: "Hello!World!")

//tuple好用的地方
//傳出多個值
/*
func minMax(array:[Int]) -> (min:Int,max:Int){
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value;
        }
    }
    return (currentMin,currentMax)
    
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
bounds.max
bounds.min
 */
func minMax(array:[Int]) -> (min:Int,max:Int)?{
    if array.isEmpty { return nil }
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value;
        }
    }
    return (currentMin,currentMax)
    
}
func abc(){
    guard let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) else{
        return;
    }
    bounds.min
    bounds.max
}


//funciton的引數名稱和參數名稱

func someFunction(firstParameterName:Int, secondParameterName:Int){
    
}

someFunction(firstParameterName: 3, secondParameterName: 2)

func someFunction(argumentLabel parameterName:Int){
    
}

someFunction(argumentLabel: 5)

func greet(person:String,from hometown:String) -> String{
    return "Hello \(person)! Glad you could visit from \(hometown)"
}

greet(person: "Bill", from: "Cupertino")

//省略引數名稱
func someFunction(_ firstParameterName:Int, secondParameterName:Int){
}
someFunction(5, secondParameterName: 3)






