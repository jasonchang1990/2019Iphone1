import UIKit


/*
struct SomeStructure:FirstProtocol,AnotherProtocol{
    
}
 */

//property Requirements

protocol SomeProtocol{
    var mustBeSettable:Int {get set}
    var doesNotNeedToBeSettable:Int {get}
}

protocol AnotherProtocol{
    static var someTypeProperty:Int{get set}
}

protocol FullyNamed{
    var fullName:String {get}
}

struct Person:FullyNamed{
    var fullName:String;
}

let john = Person(fullName: "Appleseed")

class Starship:FullyNamed{
    var prefix:String?
    var name:String
    init(name:String, prefix:String? = nil){
        self.name = name
        self.prefix = prefix
    }
    
    var fullName:String{
        return (prefix != nil ? prefix! + " " : "") + name;
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
ncc1701.fullName


//Method Requirements
protocol RandomNumberGenerator{
    func random() -> Double;
}

class LinearCongruentialGeneratior:RandomNumberGenerator{
    var lastRandom = 42.0;
    let m = 139968.0;
    let a = 3877.0;
    let c = 29573.0;
    func random() -> Double {
        return lastRandom / m;
    }
}

protocol Togglable{
    mutating func toggle();
}

enum OnOffSwitch:Togglable{
    case off, on
    mutating func toggle(){
        switch self{
            case .off:
                self = .on;
            case .on:
                self = .off;
        }
    }
}

var lightSwitch = OnOffSwitch.off;
lightSwitch.toggle();
lightSwitch


//initializer requirements
protocol SomeProtocol1{
    init(someParameter:Int);
}

class SomeClass:SomeProtocol1{
    required init(someParameter: Int) {
        
    }
}

protocol SomeProtocol2{
    init();
}



class SomeSuperClass{
    init(){
    }
}

class SomeSubClass:SomeSuperClass, SomeProtocol2{
    required override init() {
        //
    }
}

//Protocol as Type
