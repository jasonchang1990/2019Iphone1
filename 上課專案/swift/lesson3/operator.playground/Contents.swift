import UIKit

var a = 1;
a += 2;

let contentHeight = 40
let hasHeader = false;
let rowHeight = contentHeight + (hasHeader ? 50: 20)

//nil運算子
let defaultColorName = "red"
var userDefinedColorName:String?;
var colorNametoUser = userDefinedColorName ?? defaultColorName

for index in 1...5{
    print(index)
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count

for i in 0..<count{
    names[i]
}

for name in names[2...]{
    print(name)
}

for name in names[...2]{
    print(name)
}

let allowedEntry = false;
if !allowedEntry {
    print("ACCESS DENIED");
}

