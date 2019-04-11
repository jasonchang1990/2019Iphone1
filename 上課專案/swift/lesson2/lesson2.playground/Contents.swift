import UIKit

//let connotBeNegative:UInt8 = -1;
//let tooBitg:Int8 = Int8.max + 1;

let twoThousand:UInt16 = 2_000;
let one:UInt8 = 1;

let twoThousandAndOne = twoThousand + UInt16(one)

//整數和浮點數之間的轉型
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine;

//資料類型的小名
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
maxAmplitudeFound = 3;

//boolean
//Bool
let orangesAreOrange = true
let turnipsAreDelicious = true

if turnipsAreDelicious {
    print("Mmm,tasty turnips!")
}else{
    print("Eww, turnips are horrible.");
}



