import UIKit
//set
var letters = Set<Character>()
print("letters is of type Set<Charcter> with \(letters.count)")
letters.insert("a")

letters = [];

//利用陣例值的表示法
var favoriteGenres:Set = ["Rock", "Classical", "Hip hop"]
favoriteGenres.count
favoriteGenres.insert("Jazz")
favoriteGenres;
if favoriteGenres.remove("rock") == nil {
    print("移除失敗")
}

if favoriteGenres.contains("Funk"){
    print("有Funk這個值");
}else{
    print("沒有Funk這個值");
}

for genre in favoriteGenres{
    print("\(genre)")
}

//一般set我們轉成陣列來使用
let sortedGenres = favoriteGenres.sorted()
