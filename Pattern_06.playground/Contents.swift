import UIKit

var givenNumber = 5

func pattrern_specialchars_06(number: Int) {
    for row in 1...number {
        for space in 1...number {
            if space <= number-row {
                print(" ", terminator: "")
                print(" ", terminator: "")
            }
        }
        
        for _ in 1...(2*row-1) {
            print("*", terminator: "")
            print(" ", terminator: "")
        }
        
        print("")
    }
}

pattrern_specialchars_06(number: givenNumber)
print("\n")


func pattrern_numbers_06(number: Int) {
    for row in 1...number {
        for space in 1...number {
            if space <= number-row {
                print(" ", terminator: "")
                print(" ", terminator: "")
            }
        }
        
        for column in 1...(2*row-1) {
            print(column, terminator: "")
            print(" ", terminator: "")
        }
        
        print("")
    }
}

pattrern_numbers_06(number: givenNumber)
print("\n")


func pattrern_alphabets_06(number: Int) {
    for row in 1...number {
        for space in 1...number {
            if space <= number-row {
                print(" ", terminator: "")
                print(" ", terminator: "")
            }
        }
        
        for _ in 1...(2*row-1) {
            print("A", terminator: "")
            print(" ", terminator: "")
        }
        
        print("")
    }
}

pattrern_alphabets_06(number: givenNumber)
print("\n")

/*
 
 outputs:
 
        *
      * * *
    * * * * *
  * * * * * * *
* * * * * * * * *


        1
      1 2 3
    1 2 3 4 5
  1 2 3 4 5 6 7
1 2 3 4 5 6 7 8 9


        A
      A A A
    A A A A A
  A A A A A A A
A A A A A A A A A

 
 */

