import UIKit

let givenArray = [2,3,4,5,6,7,8,9]
let target = 11 //2 //1 //0 //8

func checkTargetExistOrNotInGivenArray(_ array: [Int], target: Int) -> Bool {
    
    var isTargetExist = false
    
    var firstIndex = 0
    var lastIndex = array.count - 1
    
    while(firstIndex <= lastIndex) {
        
        let midIndex = (firstIndex + lastIndex)/2
        let midValue = array[midIndex]
        
        if midValue == target {
            isTargetExist = true
            return isTargetExist
        }
        else {
            if target > midValue {
                firstIndex = midIndex + 1
            } else {
                lastIndex = midIndex - 1
            }
        }
    }
    
    return isTargetExist
}


let res = checkTargetExistOrNotInGivenArray(givenArray, target: target)
print("Binary Search on:", givenArray, "\nTarget:", target, "\nResult:", res)

