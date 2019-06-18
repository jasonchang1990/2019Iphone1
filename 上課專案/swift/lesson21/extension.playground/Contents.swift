import UIKit
/*
extension SomeType{
    
}
*/

/*
 extension SomeType:SomeProtocol, AnotherProtocol{
 }
 */
//Computed Property
extension Double{
    var km:Double{ return self * 1_000.0}
    var m:Double{ return self * 1_00.0}
    var cm:Double{ return self / 100.0}
    var mm:Double{ return self / 1_000.0}
    var ft:Double{ return self / 3.28084}
}

let oneInch = 25.5.mm;
print("One inch is \(oneInch) meters");

let threeFeet = 3.ft
print("Three feet is \(threeFeet)");


let aMarathon = 42.0.km + 195.0.m

