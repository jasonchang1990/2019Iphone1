import UIKit

var namesOfIntegers = [Int:String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]
namesOfIntegers

var airports = [
    "YYZ": "Toronto pearson",
    "DUB": "Dublin"
]

airports.count

//簡易的更新法
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

//一般的更新法(update())
if let _ = airports.updateValue("Dublin Airport", forKey: "DUB"){
    //true 區段就是有值
    print("成功")
}else{
   //false 區段，得到nil
    print("失敗")
}


//透過key取出值,會傳出optional type
if let airportName = airports["DUB"]{
    print("DUB的名字是\(airportName)")
}else{
    print("key有錯");
}

airports["APL"] = "Apple International"
airports["APL"] = nil;

for (airportCode, airportName) in airports{
    print("\(airportCode),\(airportName)")
}

for airportCode in airports.keys{
    print(airportCode)
}

for airportName in airports.values{
    print(airportName)
}

let airportCodes = [String](airports.keys)
let airportValues = [String](airports.values)
