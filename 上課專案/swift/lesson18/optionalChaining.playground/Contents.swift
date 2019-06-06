import UIKit

class Person{
    var residence:Residence?
}

class Residence{
    var numberOfRooms = 1
}

let john = Person();
john.residence = Residence();

/*
if let residence = john.residence{
    residence.numberOfRooms
}
 */

if let numberOfRoos = john.residence?.numberOfRooms{
    print(numberOfRoos);
}else{
    print("執行失敗");
}

