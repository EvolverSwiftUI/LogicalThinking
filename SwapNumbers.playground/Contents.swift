import UIKit

var a = 4
var b = 100

// 1st way
//(b,a) = (a,b)

// 2nd way
//(a,b) = (b,a)

// 3nd way
//a = a + b
//b = a - b
//a = a - b

// 4th way
// let temp = a
// a = b
// b = temp

//print(a,b)

// function to swap numbers
func swapNums(a: inout Int, b: inout Int) -> (Int, Int) {
    a = a + b
    b = a - b
    a = a - b
    return (a,b)
}

print(swapNums(a: &a, b: &b))
