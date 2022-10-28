import UIKit

var givenNumber = 4005001

func revereNumberNew(number: Int) -> Int {
    
    var reverseNumber = 0
    var inputNumber = number

    while(inputNumber > 0) {
        reverseNumber = reverseNumber * 10
        
        let singleDigit = inputNumber % 10
        reverseNumber = reverseNumber + singleDigit
        inputNumber = inputNumber / 10
    }
        
    return reverseNumber
}

let result = revereNumberNew(number: givenNumber)
print("GivenNumber: ", givenNumber, "\nReverseNumber: ", result)
