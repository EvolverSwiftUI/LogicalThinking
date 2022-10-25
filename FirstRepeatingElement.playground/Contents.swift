import Foundation
import CoreFoundation


// Find first repeating element
// without using existing functions

let intArr = [10, 5, 3, 4, 34, 53, 6, 10]

func findFirstRepeatingElement(fromArray arr: [Int]) -> Int {
    
    var uniqueItems = [Int]()
    var repeatedIndicesArray = [Int]()
    
    for index in 0..<arr.indices.count {
        if !uniqueItems.contains(arr[index]) {
            uniqueItems.append(arr[index])
        } else {
            // now got the repeated element
            let repeatedElement = arr[index]
            for index in 0..<arr.indices.count {
                if arr[index] == repeatedElement {
                    repeatedIndicesArray.append(index)
                    print(repeatedIndicesArray)
                }
            }
        }
    }
    
    var repeatedEle = -1
    if repeatedIndicesArray.isEmpty == false {
        var minIndex = repeatedIndicesArray[0]
        for i in repeatedIndicesArray {
            if i <= minIndex {
                minIndex = i
                print(minIndex)
            }
        }
        repeatedEle = arr[minIndex]
    }
    
    return repeatedEle
}

print(findFirstRepeatingElement(fromArray: intArr))

struct str1: Hashable {
    
}
