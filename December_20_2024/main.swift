//
//  main.swift
//  December_20_2024
//
//A description of its operation:
//Greeting: Welcome to the Calculator program
//Select an operation: +, -, /, *, %.
//Enter an integer:
//Example: 5
//Enter a second number:
//Example: 7
//Example: 5 + 7
//Result: 10
//Program ended with exit code: 0
//*Note:
//If the user has entered something together with an integer, the user should see the following entry:
//You have entered an incorrect first/second number!
//If instead of operators: (+, -, /, *, % ) the user entered something else, the user should see this entry: You have entered an invalid operation!
//Translated with DeepL.com (free version)



print("Добро пожаловать в калькулятор")

let operation = getDateFromUser(description: "Выберите операцию: +, -, /, *, %")
let firstNumber = getDateFromUser(description: "Введите целое число")
let secondNumber = getDateFromUser(description: "Введите второе число")

print("идёт вычисление примера: " + firstNumber + " " + operation + " " + secondNumber)

if let firstNumber = Int (firstNumber) {
    if let secondNumber = Int (secondNumber) {
        calculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    } else {
        print("Вы ввели неверное второе число")
    }
    } else {
    print("Вы ввели неверное первое число")
}


func getDateFromUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}

func showResult(_ result: Int) {
    let result = String(result)
    let description = "Результат: "
    print(description + " " + result)
}

func calculate(operation: String, firstNumber: Int, secondNumber: Int) {
    switch operation {
    case "+": showResult(firstNumber + secondNumber)
    case "-": showResult(firstNumber - secondNumber)
    case "*": showResult(firstNumber * secondNumber)
    case "%": showResult(firstNumber % secondNumber)
    case "/":
        if secondNumber != 0 {
            showResult(firstNumber / secondNumber)
        } else {
            print("Деление на 0 является недопустимой операцией!")
        }
    default: print("Вы ввели неверную операцию!")
    }
}






