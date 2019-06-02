import UIKit

func greet(person:[String:String]){
    guard let name = person["name"] else{
        return;
    }
    
    print("Hello! \(name)!");
    
    guard let location = person["location"] else{
        return
    }
    
    print("location:\(location)");
    
}

greet(person: ["name": "john"])
greet(person: ["name": "robert", "location": "taipei"])
