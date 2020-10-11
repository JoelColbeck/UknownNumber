import Foundation

let randomRange: UInt32 = 50
let randomNumber = UInt8(arc4random_uniform(randomRange))
var userInput: String?
var count: Int = 0
let message = [
    "win" : "Верно! Количество попыток: ",
    "more" : "Нужно больше",
    "less" : "Нужно меньше",
    "non-int" : "Это вообще не число!",
]

print("Debug. \(randomNumber)")

print("Задано случайное число от 0 до 50. Отгадайте его!")
repeat {
    print("Введите число:", terminator: " ")
    userInput = readLine()
    
    if let input = UInt8(userInput!) {
        count += 1
        if input > randomNumber {
            print(message["less"]!)
            
        } else if input < randomNumber {
            print(message["more"]!)
            
        } else {
            print(message["win"]!, count)
            break
        }
    } else {
        print(message["non-int"]!)
    }
} while true
