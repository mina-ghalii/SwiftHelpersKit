//
//  String+EXT.swift
//  SwiftDevAssistant
//
//  Created by Mina Atef on 05/02/2023.
//

import Foundation

extension String {
    
    /// Levenshtein Algorithem that tells you how mutch 2 strings are diffrent from each other
    /// - Parameter other: the string that you want to check the diffrence with it
    /// - Returns: number of diffrences between the 2 strings
    public func levenshtein(_ other: String) -> Int {
        let sCount = self.count
        let oCount = other.count

        guard sCount != 0 else {
            return oCount
        }

        guard oCount != 0 else {
            return sCount
        }

        let line: [Int]  = Array(repeating: 0, count: oCount + 1)
        var mat: [[Int]] = Array(repeating: line, count: sCount + 1)

        for item in 0...sCount {
            mat[item][0] = item
        }

        for item in 0...oCount {
            mat[0][item] = item
        }

        for j in 1...oCount {
            for i in 1...sCount {
                if self[i - 1] == other[j - 1] {
                    mat[i][j] = mat[i - 1][j - 1]       // no operation
                } else {
                    let del = mat[i - 1][j] + 1         // deletion
                    let ins = mat[i][j - 1] + 1         // insertion
                    let sub = mat[i - 1][j - 1] + 1     // substitution
                    mat[i][j] = min(min(del, ins), sub)
                }
            }
        }

        return mat[sCount][oCount]
    }
    
}

extension String {

  var length: Int {
    return count
  }

  subscript (i: Int) -> String {
    return self[i ..< i + 1]
  }

  func substring(fromIndex: Int) -> String {
    return self[min(fromIndex, length) ..< length]
  }

  func substring(toIndex: Int) -> String {
    return self[0 ..< max(0, toIndex)]
  }

  subscript (range: Range<Int>) -> String {
    let range = Range(uncheckedBounds: (lower: max(0, min(length, range.lowerBound)),
                                        upper: min(length, max(0, range.upperBound))))
    let start = index(startIndex, offsetBy: range.lowerBound)
    let end = index(start, offsetBy: range.upperBound - range.lowerBound)
    return String(self[start ..< end])
  }

}
