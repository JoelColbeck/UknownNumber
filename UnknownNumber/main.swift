import Foundation

let randomRange: UInt32 = 50
let randomNumber = UInt8(arc4random_uniform(randomRange))
var userInput: String?
var count: Int = 0

print("Задано случайное число от 0 до 50. Отгадайте его!")
repeat {
    print("Введите число:", terminator: " ")
    userInput = readLine()
    
    if let input = UInt8(userInput!) {
        if input <= randomRange && input >= 0 {
            if input > randomNumber {
                print("Нужно меньше")
                count += 1
            } else if input < randomNumber {
                print("Нужно больше")
                count += 1
            } else {
                print("Верно! Количество попыток: \(count)")
                break
            }
        } else {
            print("Введенное число выходит за рамки заданного диапазона!")
        }
    } else {
        print("Это вообще не число!")
    }
} while true
