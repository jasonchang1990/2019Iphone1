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

