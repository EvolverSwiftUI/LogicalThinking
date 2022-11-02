import UIKit

let givenNumsArray = [2,6,8,0,4,7]
let target = 9

func twoSumFromArray(_ nums: [Int], target: Int) -> [Int] {
    
    var output: [Int] = []
    var dict: [Int: Int] = [:]
    
    for (index,element) in nums.enumerated() {
        dict[element] = index
    }
    
    for (index,element) in nums.enumerated() {
        if let otherIndex = dict[target-element], otherIndex != index {
            output.append(contentsOf: [index, otherIndex])
            return output
        }
    }
    return output
}

let res = twoSumFromArray(givenNumsArray, target: target)
print(res)


