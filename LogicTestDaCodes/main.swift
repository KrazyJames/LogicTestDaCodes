//
//  main.swift
//  LogicTestDaCodes
//
//  Created by Jaime Escobar on 10/11/20.
//

import Foundation

// MARK:- Algorithm
func facing(rows: Int, cols: Int) -> String {
    if cols != 0, rows != 0 {
        if cols >= rows {
            if (rows % 2) != 0 {
                return "R"
            } else {
                return "L"
            }
        } else {
            if (cols % 2) != 0 {
                return "D"
            } else {
                return "U"
            }
        }
    } else {
        return "Cannot solve with matrix (\(rows), \(cols)) because there is no matrix with rows or cols values equal 0"
    }
    
}

// MARK:- Reading number of matrices
var squares = 0
if let scenes = readLine() {
    if let numOfSquares = Int(scenes) {
        squares = numOfSquares
    }
}

// MARK:- Reading matrices
if squares > 0 {
    var matrices: [[Int]] = []
    for _ in 1...squares {
        if let couple = readLine() {
            let matrixArray = couple.components(separatedBy: " ")
            if matrixArray.count == 2 {
                let matrix = matrixArray.map { str -> Int? in
                    return Int(str)
                }
                var intCouple: [Int] = []
                for item in matrix {
                    if let item = item {
                        intCouple.append(item)
                    } else {
                        intCouple.append(0)
                    }
                }
                matrices.append(intCouple)
            } else {
                print("Matrices only have 2 dimensions, insert 2 numbers per line as: rows cols")
            }
        }
    }
    // MARK:- Solving
    for matrix in matrices {
        print(facing(rows: matrix[0], cols: matrix[1]))
    }
}
