import Foundation

let givenNumber = 5

/// Factorial of Number
func factorial(OfNumber number: Int) -> Int {
    if number == 0 { return 1 }
    return number * factorial(OfNumber: number - 1)
}


let res = factorial(OfNumber: givenNumber)
print("Factorial of number \(givenNumber) is: ", res)



/// Count Down of Number
func countDown(OfNumber number: Int) {
    if number == 0 {
        print("Stop - Count Down")
    } else {
        print(number)
        countDown(OfNumber: number - 1)
    }
}

countDown(OfNumber: givenNumber)
