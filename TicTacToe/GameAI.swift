//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    var numberOfMarks = 0
    for x in 0...2 {
        
        
        for y in 0...2 {
            if board[(x,y)] == player {
                numberOfMarks += 1
            }
            
        }
        
        if numberOfMarks == 3 {
            return true
        }
        
    }
    
    for y in 0...2 {
        var numberOfMarks = 0
        
        for x in 0...2 {
            if board[(x,y)] == player {
                numberOfMarks += 1
            }
            
        }
        
        if numberOfMarks == 3 {
            return true
        }
        
    }
    
    numberOfMarks = 0
    let leftToRight: [Coordinate] = [(0,0), (1,1), (2,2)]
    
    for cordinate in leftToRight {
        if board[cordinate] == player {
            numberOfMarks += 1
        }
    }
    
    if numberOfMarks == 3 {
        return true
    }
    
    numberOfMarks = 0
    let rightToLeft: [Coordinate] = [(2,0), (1,1), (0,2)]
    
    for cordinate in rightToLeft {
        if board[cordinate] == player {
            numberOfMarks += 1
        }
    }
    
    if numberOfMarks == 3 {
        return true
    }
    
    return false
}
