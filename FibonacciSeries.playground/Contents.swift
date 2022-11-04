import UIKit

let nThNumber = 6

func getFibonacciSeries(forNumber number: Int) -> [Int] {
    
    //0,1
    //0 + 1 = 1 ===> 0,1,1
    //1 + 1 = 2 ===> 0,1,1,2
    //1 + 2 = 3 ===> 0,1,1,2,3
    //2 + 3 = 5 ===> 0,1,1,2,5.....etc.
    
    var firstNumber = 0
    var secondNumber = 1
    var fibonacciArray: [Int] = []
    fibonacciArray.append(contentsOf: [firstNumber, secondNumber])
    var newNum: Int = 0
    
    for _ in 2...nThNumber {
        
        newNum = firstNumber + secondNumber
        fibonacciArray.append(newNum)
        firstNumber = secondNumber
        secondNumber = newNum
    }

    return fibonacciArray
}

let res = getFibonacciSeries(forNumber: nThNumber)
print(res)
