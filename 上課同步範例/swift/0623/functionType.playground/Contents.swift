import UIKit

//function types
//(Int,Int)->Int
func addTwoInts(_ a:Int,_ b:Int) -> Int{
    return a + b;
}

//(Int,Int)->Int
func multiplyTwoInts(_ a:Int,_ b:Int) -> Int{
    return a * b;
}

//() -> Void
func printHelloWorld(){
    print("hello, world")
}
//將變數參考到function
var mathFunction:(Int, Int) -> Int = addTwoInts
print("Result:\(mathFunction(2, 3))")
mathFunction = multiplyTwoInts
print("Result:\(mathFunction(2, 3))")

//function type當作參數
func printMathResult(_ mathFunction:(Int,Int)-> Int,_ a:Int,_ b:Int){
    print("Result:\(mathFunction(a,b))");
}

printMathResult(addTwoInts, 3, 5)
printMathResult(multiplyTwoInts, 3, 5)

//function type當作傳出值
func chooseStepFunction(backward:Bool) -> (Int) -> Int{
    func stepForward(_ input:Int) -> Int{
        return input + 1;
    }
    
    func stepBackward(_ input:Int) -> Int{
        return input - 1;
    }
    
    return backward ? stepBackward : stepForward
}


var currentValue = 3;
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)...");
    currentValue = moveNearerToZero(currentValue)
}

//Closures

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


func backward(_ s1:String,_ s2:String)  ->  Bool{
   
    return s1 < s2;
}

var reverseNames = names.sorted(by: backward)

reverseNames = names.sorted(by: {
    (s1:String, s2:String) -> Bool in
    return s1 > s2;
})

print(reverseNames)

reverseNames = names.sorted(by: {
    (s1:String, s2:String) -> Bool in
        s1 > s2;
})
print(reverseNames)

reverseNames = names.sorted(by: {s1, s2 in  s1 > s2})
print(reverseNames)

reverseNames = names.sorted(by: { $0 > $1})
print(reverseNames)

reverseNames = names.sorted{$0 > $1}
print(reverseNames)
