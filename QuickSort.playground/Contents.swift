import UIKit

let givenArray = [3,8,0,7,1,9,4,2,6,5]

func applyQuickSortOnArray(array: [Int]) -> [Int] {
    
    var lessNumberArray: [Int] = []
    var graterNumberArray: [Int] = []
    var equalNumberArray: [Int] = []
    
    if array.isEmpty == true { return array }
    
    let pivotNumber = array[array.count/2]

    print("Pivot Number: ", pivotNumber)
    
        for number in array {
            if number > pivotNumber {
                graterNumberArray.append(number)
            } else if number < pivotNumber {
                lessNumberArray.append(number)
            } else {
                equalNumberArray.append(number)
            }
        }
    print(lessNumberArray)
    print(equalNumberArray)
    print(graterNumberArray)

    return applyQuickSortOnArray(array: lessNumberArray) +
    equalNumberArray +
    applyQuickSortOnArray(array: graterNumberArray)
}

let res = applyQuickSortOnArray(array: givenArray)
print("Quick Sort on array \(givenArray) is: ", res)
