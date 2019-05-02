import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let sortedNames = names.sorted();

func backward(_ s1:String,_ s2:String) -> Bool{
    return s1 > s2
}

var reverseNames = names.sorted(by:backward)

reverseNames = names.sorted(by: {
    (s1:String,s2:String) -> Bool in
    return s1 < s2
})

