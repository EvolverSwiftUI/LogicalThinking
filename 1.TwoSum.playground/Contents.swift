import UIKit

var input = [3,3] //[3,2,4] //[2,7,11,15]
let target = 6 //6 //9

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for (index1,num1) in nums.enumerated() {
        print(index1,num1)
        for (index2,num2) in nums.enumerated() {
            print(index2,num2)
            if num1 + num2 == target {
                if index1 != index2 {
                    return [index1, index2]
                }
            }
        }
    }
    return []
}

let output = twoSum(input, target)
print(output)
