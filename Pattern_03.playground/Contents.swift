import UIKit

let givenNumber = 5

func printPattern_SpecialChar_03(number: Int) {
    for row in 1...number {
        for _ in 1...row {
            print("*", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

printPattern_SpecialChar_03(number: givenNumber)
print("\n")

/*
 output:
 
 *
 * *
 * * *
 * * * *
 * * * * *

 */


// ========================================


func printPattern_Number_03(number: Int) {
    for row in 1...number {
        for column in 1...row {
            print(column, terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

printPattern_Number_03(number: givenNumber)
print("\n")

/*
 output:
 
 1
 1 2
 1 2 3
 1 2 3 4
 1 2 3 4 5

 */


// ========================================


func printPattern_Alphabet_03(number: Int) {
    for row in 1...number {
        for _ in 1...row {
            print("A", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

printPattern_Alphabet_03(number: givenNumber)
print("\n")

/*
 output:
 
 A
 A A
 A A A
 A A A A
 A A A A A

 */
