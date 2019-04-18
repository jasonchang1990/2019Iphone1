import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names{
    print("Hello! \(name)");
}

let numberOfLegs = ["spider":8 , "ant":6, "cat":4]
for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs")
}


for index in 1..<5{
    print(index);
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power{
    answer *= base;
}
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark)
}


for tickMark in stride(from: 0, through: minutes, by: minuteInterval){
    print(tickMark)
}

//for(int i=25;i>=0;i--)

var finalSquare = 25
while finalSquare > 0{
    print(finalSquare)
    finalSquare -= 1;
}




finalSquare = 25
repeat{
    finalSquare -= 1
    print(finalSquare)
}while finalSquare > 0



