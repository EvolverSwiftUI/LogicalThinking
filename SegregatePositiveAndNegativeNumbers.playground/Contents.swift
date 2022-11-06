import UIKit

let givenNumArray = [9,1,-2,-6,12,81,-13,8,4]

func seggregateNegativeAndPositiveNumbersInArray(_ arr: [Int]) -> [Int] {
    
    var output: [Int] = arr
    
    var startIndex = 0
    var endIndex = output.count - 1
    let pivotNumber = 0
    
    for _ in output.indices {
        
        if startIndex >= endIndex {
            return output
        }
        
        if output[startIndex] < pivotNumber {
            startIndex += 1
        } else if output[endIndex] > pivotNumber {
            endIndex -= 1
        } else {
            let temp = output[startIndex]
            output[startIndex] = output[endIndex]
            output[endIndex] = temp
        }
    }
    
    return output
}

let res = seggregateNegativeAndPositiveNumbersInArray(givenNumArray)
print(
    "Seggregate Negative and Positive Numbers in Given Numbers Array",
    "\nInput: ", givenNumArray,
    "\nOutput: ", res
)
