import UIKit

let givenNumber = 5

func printPattern_SpecialSymbols_04(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if row + column <= number {
                //print("#", terminator: "")
                // just for reference of space coming or not
                print(" ", terminator: "")
                print(" ", terminator: "")
            } else {
                print("*", terminator: "")
                print(" ", terminator: "")
            }
        }
        print("")
    }
}

printPattern_SpecialSymbols_04(number: givenNumber)
print("\n")

/*
 
output:
        *
      * *
    * * *
  * * * *
* * * * *

*/


// ----------------------------------------------------

func printPattern_Numbers_04(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if row + column <= number {
                //print("#", terminator: "")
                // just for reference of space coming or not
                print(" ", terminator: "")
                print(" ", terminator: "")
            } else {
                print((column+row)-number, terminator: "")
                print(" ", terminator: "")
            }
        }
        print("")
    }
}

printPattern_Numbers_04(number: givenNumber)
print("\n")

/*
 
output:

        1
      1 2
    1 2 3
  1 2 3 4
1 2 3 4 5

*/

// ----------------------------------------------------

func printPattern_Alphabets_04(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if row + column <= number {
                //print("#", terminator: "")
                // just for reference of space coming or not
                print(" ", terminator: "")
                print(" ", terminator: "")
            } else {
                print("A", terminator: "")
                print(" ", terminator: "")
            }
        }
        print("")
    }
}

printPattern_Alphabets_04(number: givenNumber)
print("\n")

/*
 
output:

        A
      A A
    A A A
  A A A A
A A A A A

*/
