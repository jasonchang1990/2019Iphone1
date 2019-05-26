import UIKit

var str = "Hello, playground"
//指定運算子
let b = 10
let a = 5

1 + 1
9 % 4

//混合運算子
var a1 = 1
//a1 = a1 + 1
a1 += 1
a1 *= 5
a1 /= 5


//比較運算子
//==
//!=
//>
//<
//>=
//<=

//3元運算式
let contentHeight = 40
let hasHeader = false
let rowHeight:Int
/*
if hasHeader {
   rowHeight = contentHeight + 50
}else{
   rowHeight = contentHeight + 20
}
*/

rowHeight = contentHeight + (hasHeader ? 50 : 20)


//nil運算子 ??

let defaultColorName = "red"
var userDefinedColorName:String?

var colorNmaeToUse = userDefinedColorName ?? defaultColorName


for index in 1..<5{
    print("\(index) times 5 is \(index * 5)");
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count

for i in 0..<count{
    print("\(names[i])");
}
print("=================")
for name in names{
    print("\(name)");
}
print("=================")
for name in names[2...]{
    print("\(name)");
}
print("=================")
for name in names[..<2]{
    print("\(name)");
}

//&& ||
