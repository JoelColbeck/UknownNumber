import Foundation

let randomRange: UInt32 = 50
var randomNumber = UInt8(arc4random_uniform(randomRange))
var userInput: String?
var count: Int = 0
let message = [
    "win" : "Верно! Количество попыток:",
    "more" : "Нужно больше",
    "less" : "Нужно меньше",
    "newGame" : "Хотите повторить? (+/-)",
    "undefined" : "Не то вводите...",
    "randomNumber" : "Задано случайное число от 0 до 50. Отгадайте его!",
]

print("Debug. \(randomNumber)")

print(message["randomNumber"]!)
mainLoop: repeat {
    
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
            
            // Новая игра
            print(message["newGame"]!)
            
            repeat {
                userInput = readLine()
                
                switch userInput {
                case "+":
                    print(message["randomNumber"]!)
                    randomNumber = UInt8(arc4random_uniform(randomRange))
                    count = 0
                    continue mainLoop
                case "-":
                    break mainLoop
                default:
                    print(message["undefined"]!)
                }
            } while true
        }
    } else {
        print(message["undefined"]!)
    }
} while true
