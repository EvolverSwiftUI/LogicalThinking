import UIKit

let givenNumber = 5 //9 //10

func printPattern_SpecialChars_05(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if column <= number - row {
                print(" ", terminator: "")
            }
        }
        for _ in 1...row {
            print("* ", terminator: "")
        }
        print("")
    }
}

printPattern_SpecialChars_05(number: givenNumber)
print("\n")

/*
 output:
 
     *
    * *
   * * *
  * * * *
 * * * * *
 
*/


// ------------------------------------------------------------


func printPattern_Numbers_05(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if column <= number - row {
                print(" ", terminator: "")
            }
        }
        for column in 1...row {
            print("\(column) ", terminator: "")
        }
        print("")
    }
}

printPattern_Numbers_05(number: givenNumber)
print("\n")

/*
 output:
 
     1
    1 2
   1 2 3
  1 2 3 4
 1 2 3 4 5
 
*/

// ------------------------------------------------------------

func printPattern_Chars_05(number: Int) {
    for row in 1...number {
        for column in 1...number {
            if column <= number - row {
                print(" ", terminator: "")
            }
        }
        for _ in 1...row {
            print("A ", terminator: "")
        }
        print("")
    }
}

printPattern_Chars_05(number: givenNumber)
print("\n" )

/*
 output:
 
     A
    A A
   A A A
  A A A A
 A A A A A
 
*/
