import UIKit

let http404Error = (404, "Not Found")

//拆解，取出tuple的成元
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)

let (justTheStatusCode, _) = http404Error //省略運算子
print(justTheStatusCode)

//索引法

print(http404Error.0)
print(http404Error.1)

//標籤法
let http200Status = (statusCode: 200, description:"OK")
http200Status.statusCode
http200Status.description
