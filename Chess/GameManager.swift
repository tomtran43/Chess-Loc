//
//  GameManager.swift
//  Chess
//
//  Created by Loc Tran on 3/6/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class GameManager: NSObject {

    var board: BoardCV?
    
    override init(){
    
        self.board = BoardCV()
        
    }
    
    func addBoardToViewController(_ viewcontroller: UIViewController, size: CGFloat){
        var boardView = BoardCV(frame: CGRect(x: 0, y: viewcontroller.view.bounds.size.height / 2 - size / 2, width: size, height: size))
        
        boardView.rowTotal = 8
        boardView.colTotal = 8
        boardView.cellSize = size/CGFloat(boardView.rowTotal!)
        boardView.drawBoard(size: size)
        self.board?.addSubview(boardView)
        viewcontroller.view.addSubview(boardView)
        
        let piece = Pawn(frame:CGRect(x: 0, y: viewcontroller.view.bounds.size.height / 2 - size / 2, width: size, height: size), position:(2,2))
        piece.backgroundColor = UIColor.red
        viewcontroller.view.addSubview(piece)
        
    }
    


    
}
