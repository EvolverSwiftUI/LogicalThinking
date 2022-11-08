import UIKit

let givenNumber = 5

func printPattern_SpecialChar_02(number: Int) {
    for row in 1...number {
        for _ in stride(from: number, through: row, by: -1) { // use stride when you decrease value
            print("*", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

printPattern_SpecialChar_02(number: givenNumber)
print("\n")

// output:-

/*
output:
 
* * * * *
* * * *
* * *
* *
*
 
*/

// -------------------------------------------------

func printPattern_Number_02(number: Int) {
    for row in 1...number {
        for column in stride(from: number, through: row, by: -1) { // use stride when you decrease value
            print(number-column + 1, terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

printPattern_Number_02(number: givenNumber)
print("\n")

/*
output:
 
 1 2 3 4 5
 1 2 3 4
 1 2 3
 1 2
 1

*/


// -------------------------------------------------

func printPattern_Alphabet_02(number: Int) {
    for row in 1...number {
        for _ in stride(from: number, through: row, by: -1) { // use stride when you decrease value
            print("A", terminator: "")
            print(" ", terminator: "")
        }
        print("")
    }
}

printPattern_Alphabet_02(number: givenNumber)

/*
output:
 
 A A A A A
 A A A A
 A A A
 A A
 A

*/
