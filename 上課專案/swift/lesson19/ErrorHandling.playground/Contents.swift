import UIKit

//定義錯誤
enum VendingMachineError:Error{
    case invalidSelection
    case insufficientFunds(coinsNeeded:Int)
    case outOfStock
}

//throw VendingMachineError.insufficientFunds(coinsNeeded: 56);
func canThrowErrors() throws -> String{
    //throw VendingMachineError.insufficientFunds(coinsNeeded: 56);
    return "abc";
}

func cannotThrowErrors() -> String{
    return "abc";
}

struct Item{
    var price:Int
    var count:Int
}

class VendingMachine{
    var inventory = [
        "Candy Bar":Item(price: 12, count: 7),
        "Chips":Item(price: 10, count: 4),
        "Pretzels":Item(price: 7, count: 11)
    ]
    
    var coinsDeposited = 0;
    
    func vend(itemNamed name:String) throws{
        guard let item = inventory[name] else{
            throw VendingMachineError.invalidSelection;
        }
        
        guard item.count > 0 else{
            throw VendingMachineError.outOfStock;
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price;
        
        var newItem = item;
        newItem.count -= 1;
        inventory[name] = newItem;
        
        print("Dispensing\(name)");
    }
}


//向父method丟出錯誤

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person:String, vendingMachine:VendingMachine) throws{
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine();
vendingMachine.coinsDeposited = 8;
/*
do{
  try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
}catch VendingMachineError.invalidSelection {
    print("沒有這項商品");
}catch VendingMachineError.outOfStock{
    print("商品沒有了");
}catch VendingMachineError.insufficientFunds(let coinsNeeded){
    print("錢不夠，差\(coinsNeeded)");
}catch{
    print("無法預期的事");
}
 */

if (try? buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)) == nil {
    print("出錯了");
}

try! buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)

