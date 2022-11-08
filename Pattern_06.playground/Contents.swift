import UIKit

let givenNumber = 5 //4 //9

// Pyramid Pattern

func printPattern_SpecialChars_06(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if column <= number-row {
                print(" ", terminator: "")
                print(" ", terminator: "")
            }
        }
        for _ in 1...(row * 2 - 1) {
            print("*", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}
printPattern_SpecialChars_06(number: givenNumber)
print("\n")

/*
 output:
 
        *
      * * *
    * * * * *
  * * * * * * *
* * * * * * * * *
 
*/

// ------------------------------------------------


// Pyramid Pattern for Numbers

func printPattern_Numbers_06(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if column <= number-row {
                print(" ", terminator: "")
                print(" ", terminator: "")
            }
        }
        for column in 1...(row * 2 - 1) {
            print(column, terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}
printPattern_Numbers_06(number: givenNumber)
print("\n")

/*
 output:
 
        1
      1 2 3
    1 2 3 4 5
  1 2 3 4 5 6 7
1 2 3 4 5 6 7 8 9

*/

// ------------------------------------------------


// Pyramid Pattern for Alphabets

func printPattern_Alphabets_06(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if column <= number-row {
                print(" ", terminator: "")
                print(" ", terminator: "")
            }
        }
        for _ in 1...(row * 2 - 1) {
            print("A", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}
printPattern_Alphabets_06(number: givenNumber)
print("\n")

/*
 output:
 
        A
      A A A
    A A A A A
  A A A A A A A
A A A A A A A A A

*/

// ------------------------------------------------

