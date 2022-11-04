import UIKit

let givenArray = [2,7,5,3,6,9,8,1,0]

func findSecondMinElementFromArray(_ array: [Int]) -> Int {
    var firstMinNumber = Int.max
    var secondMinNumber = -1
    
    for number in array {
        if number < firstMinNumber {
            secondMinNumber = firstMinNumber
            firstMinNumber = number
        }
    }
    
    return secondMinNumber
}

let res = findSecondMinElementFromArray(givenArray)
print("Given array:", givenArray, "\nSecondSmallestElement:", res)

