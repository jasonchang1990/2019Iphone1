import UIKit

struct TimesTable{
    let multiplier:Int;
    subscript(index:Int) -> Int{
        return index * multiplier;
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6次的3是:\(threeTimesTable[6])");


var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2;

struct Matrix{
    let rows:Int, columns:Int
    var grid:[Double]
    
    init(rows:Int, columns:Int){
        self.rows = rows;
        self.columns = columns;
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row:Int, column:Int) -> Bool{
        return row >= 0 && row < rows && column >= 0 && column < columns;
    }
    
    subscript(row:Int, column:Int) -> Double{
        get{
            assert(indexIsValid(row: row, column: column),"Index out of range")
            return grid[(row * columns) + column]
        }
        
        set{
           assert(indexIsValid(row: row, column: column),"Index out of range")
           grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 3)
matrix[1,2] = 50.0
matrix[1,1] = 40.0
matrix[0,0] = 10.0
print(matrix.grid)
//print(matrix[20,20])
print(matrix[1,2]);
print(matrix[1,1]);
print(matrix[0,0]);

