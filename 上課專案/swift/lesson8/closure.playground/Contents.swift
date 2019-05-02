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

//closure 的所有資料類型,可以省略,因為透過推測
reverseNames = names.sorted(by: {
    (s1,s2) in
    return s1 < s2
})

//如果只有一行,可以省略return
reverseNames = names.sorted(by: {
    (s1,s2) in  s1 < s2
})

//s1,s2也可以省略去定義,$0,$1
reverseNames = names.sorted(by: { $0 < $1 })
reverseNames = names.sorted(by: < )

//trailing closure,在參數的最後一個
reverseNames = names.sorted{
    $0 < $1
}
