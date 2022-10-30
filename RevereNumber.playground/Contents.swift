import UIKit

var givenNumber = -4005001

func revereNumberNew(number: Int) -> Int {
    
    var reverseNumber = 0
    var inputNumber = number
    var negative = 1

    if inputNumber < 0 {
        inputNumber = inputNumber * -1 // make input as a positive (-123 * -1 = +123)
        negative = -1
    }

    while(inputNumber > 0) {
        let singleDigit = inputNumber % 10
        inputNumber     = inputNumber / 10
        reverseNumber   = reverseNumber * 10 + singleDigit
    }
    
    reverseNumber = reverseNumber * negative
    
    // if reversed number limit is - max & min should be with in 32 bit only
    // otherwise return 0(ZERO).
    if (reverseNumber > Int32.max || reverseNumber < Int32.min) {
        reverseNumber = 0
    }
    
    return reverseNumber
}

let result = revereNumberNew(number: givenNumber)
print("GivenNumber: ", givenNumber, "\nReverseNumber: ", result)



