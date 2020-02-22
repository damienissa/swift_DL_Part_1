import UIKit


// MARK: - Part 1 Functions

///  **Написать функции поиска сумы массива **

//func arraySum(array: [Int]) -> Int {
//    var sum = 0
//    for index in 0 ..< array.count {
//        sum = sum + array[index]
//    }
//
//
//    return sum
//}

//let sum = arraySum(array: [1,2,99,1,2,4])
//print(sum)

/// ** Задание решено с помощью! **
/// ** Возможно решение средствами языка **
/// ** [1,2,99,1,2,4].reduce(0, +) **


/// **Новое задание **
/// ** Написать функицю которая будет преобразовывать Int в двоичную форму и посчитает сколько 1 в нем! **
/// ** Приимер число 1234 в двоичном коде 0100 1101 0010 Ответ: 5 **

/// **Функция переобразовывает Int в String в двоичном коде**
//
//func convert(number: Int) -> String {
//
//    return String(number, radix: 2)
//}
//
//let converted = convert(number: 1234)
//
//print(converted)
//
/// **Функция подсчета 1 в строке и возвращает их количество**
//
//func natural(one: String) -> Int {
//    let result = one.filter { $0 == "1" }
//
//    return result.count
//}
//
//let resultat = natural(one: converted)
//
//print(resultat)


// MARK: - Part 2 Classes and Structures

/// ** Написать класс и структуру UserClass, UserStruct с полями имя, фамилия, возраст, место проживания **


/*
class UserClass {
    
    var name: String
    var lastName: String
    var age: Int
    var address: String
    
    
    init(name: String, lastName: String, age: Int, address: String) {
        
        self.name = name
        self.lastName = lastName
        self.age = age
        self.address = address
    }
}


let user1Class = UserClass(name: "Dima", lastName: "Lazarev", age: 21, address: "Kooperativna 9")

print(user1Class.name, user1Class.lastName, user1Class.age, user1Class.address)


struct UserStruct {
    
    var name: String
    var lastName: String
    var age: Int
    var address: String
}


var usStruct = UserStruct(name: "Dima", lastName: "Lazarev", age: 21, address: "Kooperativna 9" )

print(usStruct.name, usStruct.lastName, usStruct.age, usStruct.address)
//при копировании класса мы копируем ссылку на объект
let user2Class = user1Class
//при копировании структуры мы копируем объект
var usStruct2 = usStruct

user2Class.address = "ZMIEVSKAYA 8"
usStruct2.address = "ZMIEVSKAYA 8"

print(user2Class.name, user2Class.lastName, user2Class.age, user2Class.address)
print(usStruct2.name, usStruct2.lastName, usStruct2.age, usStruct2.address)

print(user1Class.name, user1Class.lastName, user1Class.age, user1Class.address)
print(usStruct.name, usStruct.lastName, usStruct.age, usStruct.address)
 
 */
/*
enum PlayerState {
    case none
    case playing
    case onPause
    case forvarding
    case backvarding
    
}

class Player {
    
    var state: PlayerState = .none
    
    func startPlay() {
        state = .playing
    }
}

let player = Player()

player.startPlay()
print(player.state)
*/

enum FuelType {
    
    case bensine
    case disel
    case lpg
}

class Auto {
    
    var color: UIColor
    var numberOfDors: Int
    var fuelType: [FuelType]
    
    
    init(color: UIColor, fuelType: [FuelType], numberOfDors: Int) {
        
        self.color = color
        self.fuelType = fuelType
        self.numberOfDors = numberOfDors
    }
}

enum GruzType {
    
    case none
    case samosval
}

class GruzoveAvto: Auto {
    
    var gruzopodyomnost: Int
    var typeGruzovogo: GruzType
    
    init(color: UIColor, fuelType: [FuelType], numberOfDors: Int, gruzopodyomnost: Int, typeGruzovogo: GruzType) {
        
        self.gruzopodyomnost = gruzopodyomnost
        self.typeGruzovogo = typeGruzovogo
        super.init(color: color, fuelType: fuelType, numberOfDors: numberOfDors)
    }
}

let kamaz = GruzoveAvto(color: .red , fuelType: [.bensine], numberOfDors: 2, gruzopodyomnost: 40, typeGruzovogo: .samosval)
let toplivo: [FuelType] = [.bensine, .lpg]
let romanovaSemerka = Auto(color: .white, fuelType: toplivo, numberOfDors: 4)
