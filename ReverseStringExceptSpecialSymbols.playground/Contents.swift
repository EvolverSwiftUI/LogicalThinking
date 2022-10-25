import UIKit

var str = "*a$bcde@fghi!"

extension String {
    func characterAtIndex(index: Int) -> Character? {
        var currentIndex = 0
        for char in self {
            if currentIndex == index {
                return char
            }
            currentIndex = currentIndex + 1
        }
        return nil
    }
    
    mutating func insertNew(string: String, ind: Int) {
        self.insert(
            contentsOf: string,
            at: self.index(self.startIndex, offsetBy: ind)
        )
    }
}

extension Character {
    func isChar() -> Bool {
        if (self >= "a" && self <= "z") || (self >= "A" && self <= "Z")
        {
            return true
        }
        return false
    }
}

func reverseString(string: String) -> String {
    var reversedStr = string
    var left = 0
    var right = str.count - 1
    while(left < right)
    {
        
        let rightChar: Character = reversedStr.characterAtIndex(index: right) ?? Character("")
        let leftChar: Character = reversedStr.characterAtIndex(index: left) ?? Character("")

        if rightChar.isChar() == false
        {
            right -= 1
        }
        else if leftChar.isChar() == false
        {
            left += 1
        }
        else if (rightChar.isChar()) && (leftChar.isChar())
        {
            print("rightChar: \(String(describing: rightChar))")
            print("leftChar: \(String(describing: leftChar))")

            reversedStr.remove(at: reversedStr.index(reversedStr.startIndex, offsetBy: left))
            reversedStr.insertNew(string: "\(rightChar)", ind: left)
            
            reversedStr.remove(at: reversedStr.index(reversedStr.startIndex, offsetBy: right))
            reversedStr.insertNew(string: "\(leftChar)", ind: right)
            
            left += 1
            right -= 1
        }
        
    }
    
    return reversedStr
}

let res = reverseString(string: str)
print("Reversed str: ", res)

