import UIKit

let givenNumArray1 = [1,1,0,1,1,1]
let givenNumArray2 = [0,0,0,0,0,0]
let givenNumArray3 = [1,1,1,1,1,1]
let givenNumArray4 = [1,1,0,1,0,1]

let givenNumArray  = givenNumArray4
//let givenNumArray  = givenNumArray3
//let givenNumArray  = givenNumArray2
//let givenNumArray  = givenNumArray1

func getMaxConsecutiveOnesCount(_ arr: [Int]) -> Int {
    var localCount = 0
    var globalCount = 0
    for item in arr {
        if item == 1 {
            localCount += 1
            globalCount = max(localCount, globalCount)
        } else {
            localCount = 0
        }
    }
    return globalCount
}

let res = getMaxConsecutiveOnesCount(givenNumArray)

print(
    "Get Max Consecutive Ones Count. \n",
    "\nInput  : ", givenNumArray,
    "\nResult : ", res
)
