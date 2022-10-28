import UIKit

var tempArray = [1,4,9,0,3,6]
let findElement = 1

func findMatchElementIndexAndNumber(array: [Int], element: Int) -> (index: Int, element: Int) {
    
    var index = 0
    for item in array {
        if item == element {
            return (index, element)
        }
        index += 1
    }
    return (-1, -1)
}


let result = findMatchElementIndexAndNumber(array: tempArray, element: findElement)
print("Index: ",result.index, "Element: ", result.element)
