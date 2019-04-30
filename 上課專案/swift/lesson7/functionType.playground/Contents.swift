import UIKit

func addTwoInts(_ a:Int,_ b:Int) -> Int{
    return a + b;
}

func multiplyTwoInts(_ a:Int, _ b:Int) -> Int{
    return a * b;
}

func printHelloWorld(){ //() -> Void
    print("hello, world")
}

var mathFunction:(Int,Int) -> Int = addTwoInts;
print("result:\(mathFunction(2, 3))")

mathFunction = multiplyTwoInts;

print("result:\(mathFunction(2, 3))")

//把function當作參數
func printMathResult(_ mathFunction:(Int,Int) -> Int,_ a:Int,_ b:Int){
    print("Result:\(mathFunction(a,b))")
}

printMathResult(addTwoInts, 3, 5);
