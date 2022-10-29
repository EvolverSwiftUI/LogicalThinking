import UIKit



/// Find Second Max Number From a String

let givenString = "1a3v5b9h8fgr"

func findSecondMaxNumberFromString(string: String) -> Int {
    
    var firstMaxNumber = -1
    var secondMaxNumber = -1
    
    var numbersArray: [Int] = []
    
    for char in string {
        if char.isNumber, let number = Int(String(char)) {
            numbersArray.append(number)
        }
    }
    
    print(numbersArray)
    
    for number in numbersArray {
        if number > firstMaxNumber {
            secondMaxNumber = firstMaxNumber
            firstMaxNumber = number
        } else if number > secondMaxNumber {
            secondMaxNumber = number
        }
    }
    
    return secondMaxNumber
}

let res = findSecondMaxNumberFromString(string: givenString)
print("SecondMaxNumberFromString \(givenString) is ", res)




/// Find Second Max Number From an Array


let givenArray = [2,6,0,4,10,9]

func findSecondMaxNumberFromArray(array: [Int]) -> Int {
    
    var firstMaxNumber = -1
    var secondMaxNumber = -1

    let numbersArray = array
    
    for number in numbersArray {
        if number > firstMaxNumber {
            secondMaxNumber = firstMaxNumber
            firstMaxNumber = number
        } else if number > secondMaxNumber {
            secondMaxNumber = number
        }
    }
    
    return secondMaxNumber
}

let result = findSecondMaxNumberFromArray(array: givenArray)
print("SecondMaxNumberFromArray \(givenArray) is ", result)


