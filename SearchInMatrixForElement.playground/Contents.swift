import UIKit

let givenMatrix = [
    [2,5,6,7,9],
    [11,14,15,16,18],
    [32,34,44,56,79]
]

let target = 56

func findElementInMatrix(_ matrix: [[Int]], target: Int) -> Bool {
    
    var isNumExist = false
    var targetElementContainsArray: [Int] = []
    
    for arr in matrix {
        if target >= arr[0] && target <= arr[arr.count-1] {
            targetElementContainsArray = arr
        }
    }
    
    for element in targetElementContainsArray {
        if element == target {
            isNumExist = true
            return isNumExist
        }
    }
    
    return isNumExist
}

let res = findElementInMatrix(givenMatrix, target: target)
print("Given Matrix:", givenMatrix, "\nTarget:", target, "\nResult:", res)
