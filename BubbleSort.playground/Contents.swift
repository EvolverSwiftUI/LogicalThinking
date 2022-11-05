import UIKit

let givenNumArray = [6,23,9,0,8,47,1,-1]

func applyBubbleSortOnArray(_ arr: [Int]) -> [Int] {
    
    var numArray = arr
    let passCount = numArray.count - 1
    
    for _ in 0...passCount {
        for index in numArray.indices {
            if index < passCount,
                numArray[index] > numArray[index+1] {
                
                let temp = numArray[index]
                numArray[index] = numArray[index+1]
                numArray[index+1] = temp
            }
        }
    }
    
    return numArray
}

let res = applyBubbleSortOnArray(givenNumArray)
print("Given Number Array: ", givenNumArray, "\n Output: ", res)
