import UIKit

var givenArray = [11,35,7,9,2,43]

func reverseArray(array: [Int]) -> [Int] {
    var reverseArray = [Int]()
    for element in array {
        reverseArray.insert(element, at: 0)
        print(reverseArray)
    }
    return reverseArray
}

print(reverseArray(array: givenArray))

func revereArray2(array: [Int]) -> [Int] {
    var reverseArray = [Int]()
    let totalCount = array.count - 1
    for index in 0...totalCount {
        reverseArray.append(array[totalCount - index])
    }
    return reverseArray
}

print(revereArray2(array: givenArray))
