import UIKit

var input = [2,7,11,15,4,3,5,8,0,1]
let target = 9

func twoSum(_ nums: [Int], _ target: Int) -> [(Int, Int)] {
    var pairArray = [(Int, Int)]()

    for (index1,num1) in nums.enumerated() {
        for (index2,num2) in nums.enumerated() {
            if num1 + num2 == target {
                if index1 != index2 {
                    let ele1 = nums[index1]
                    let ele2 = nums[index2]
                    pairArray.append((ele1, ele2))
                }
            }
        }
    }
    return pairArray
}

let output = twoSum(input, target)
print(output)
