import UIKit

struct SomeStructure{
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty:Int{
        return 1;
    }
}

print(SomeStructure.storedTypeProperty)
print(SomeStructure.computedTypeProperty)

enum SomeEnumeration{
    static var storeTypeProperty = "Some value.";
    static var computedTypeProperty:Int{
        return 1;
    }
}

print(SomeEnumeration.storeTypeProperty)
print(SomeEnumeration.computedTypeProperty)

class SomeClass{
    static var storeTypeProperty = "Some value.";
    static var computedTypeProperty:Int{
        return 1;
    }
    
    class var overrideableComputedTypeProperty:Int{
        return 107;
    }
}

print(SomeClass.storeTypeProperty)
print(SomeClass.computedTypeProperty)
print(SomeClass.overrideableComputedTypeProperty)
