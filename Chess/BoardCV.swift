//
//  BoardCV.swift
//  Chess
//
//  Created by Loc Tran on 3/6/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class BoardCV: UIView {
    
    var boardSize: CGFloat?
    var cellSize: CGFloat?
    var rowTotal: Int?
    var colTotal: Int?
        
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.boardSize = frame.width
//        self.cellSize = frame.width / 8
    }

    
    func drawBoard(size: CGFloat){
        
        self.boardSize = size
        var cellColor = UIColor()

        for indexRow in 0..<self.rowTotal!{
            for indexCol in 0..<self.colTotal!{
                if ((indexCol + indexRow) % 2 == 0){
                    
                    cellColor = UIColor.gray
                }else{
                    cellColor = UIColor.white
                }
                
                let cell = Cell(frame: CGRect(x: CGFloat(indexRow) * cellSize!, y: CGFloat(indexCol) * cellSize!, width: cellSize!, height: cellSize!), color: cellColor)
                
                self.addSubview(cell)
                
                print("\(indexRow), \(indexCol)")
                
            }
        }
    }
    
    
}
