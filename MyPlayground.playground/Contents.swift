import UIKit
//написать функции поиска сумы массива

func arraySum(array: [Int]) -> Int {
    var sum = 0
    for index in 0 ..< array.count {
        sum = sum + array[index]
    }
    
    
    return sum
}

let sum = arraySum(array: [1,2,99,1,2,4])
print(sum)

