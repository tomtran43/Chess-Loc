//
//  Piece.swift
//  Chess
//
//  Created by Loc Tran on 3/7/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit


class Piece: UIView {

    var position: (row: Int, col: Int)!
    var view: UILabel?
    
    init(frame: CGRect, position: (Int, Int))
    {
        
        super.init(frame: CGRect(x: 0, y: 0, width: frame.width/8, height: frame.height/8))
        self.position = position
        self.setPosition(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setPosition(frame: CGRect)
    {
        
        self.center = CGPoint(x: frame.width/8 * CGFloat(self.position.row), y: frame.width/8 * CGFloat(self.position.col))
    }
    func getPieceLabel(){

    }
    
    
    
    
    
    

}

//class King: Piece {
//    <#code#>
//}
//
//class Queen: Piece {
//    <#code#>
//}
//
//class Rook: Piece {
//    <#code#>
//}
//
//class Knight: Piece {
//    <#code#>
//}
//
//class Bishop: Piece {
//    <#code#>
//}

class Pawn: Piece {
    
    override func getPieceLabel() {
        print("pawn")
    }
}





