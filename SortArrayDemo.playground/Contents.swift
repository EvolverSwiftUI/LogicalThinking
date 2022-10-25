import UIKit

//var givenArray = [11,35,7,9,2,43]

//func getSortedArray(isAscening: Bool = true, array: [Int]) -> [Int] {
//    var sortedArray = array
//    let totalCount = array.count
//    for _ in sortedArray {
//        for index in 0...totalCount - 1 {
//            print(array[index])
//            if index >= totalCount { break }
//            if sortedArray[index] > sortedArray[index+1] {
//                let temp = sortedArray[index]
//                sortedArray[index] = sortedArray[index+1]
//                sortedArray[index+1] = temp
//            }
//            print(sortedArray)
//        }
//    }
//    return sortedArray
//}

//print(getSortedArray(array: givenArray))

var unsortedArray = [7,8,3,4,5,9,1,2,6]


for i in 0..<unsortedArray.count {
    for j in 0..<unsortedArray.count{
        var temp = 0
        if unsortedArray[i] < unsortedArray[j] {
            temp = unsortedArray[i]
            unsortedArray[i] = unsortedArray[j]
            unsortedArray[j] = temp
            print(unsortedArray)

        }
    }
    print("\(i)th iteration: ",unsortedArray)
}
print(unsortedArray)
