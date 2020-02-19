import UIKit

// Написать функции поиска сумы массива

func arraySum(array: [Int]) -> Int {
    var sum = 0
    for index in 0 ..< array.count {
        sum = sum + array[index]
    }


    return sum
}

//let sum = arraySum(array: [1,2,99,1,2,4])
//print(sum)

// Задание решено с помощью!
// Возможно решение средствами языка
// [1,2,99,1,2,4].reduce(0, +)


// Новое задание
// Написать функицю которая будет преобразовывать Int в двоичную форму и посчитает сколько 1 в нем!
// Приимер число 1234 в двоичном коде 0100 1101 0010 Ответ: 5

// Функция переобразовывает Int в String в двоичном коде

func convert(number: Int) -> String {


return String(number, radix: 2)
}

let converted = convert(number: 1234)

print(converted)

// Функция подсчета 1 в строке и возвращает их количество

func natural(one: String) -> Int {
    let result = one.filter { $0 == "1" }

    return result.count
}

let resultat = natural(one: converted)

print(resultat)

