//
//  Cell.swift
//  Chess
//
//  Created by Loc Tran on 3/6/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class Cell: UIView {
    
    var color = UIColor.white.cgColor
    var cellSize: CGFloat?

    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }
    
    init(frame: CGRect, color: UIColor) {
        super.init(frame: frame)
        self.cellSize = frame.width
        self.color = color.cgColor
        drawCell()
        
    }
    
    func drawCell(){
        
        let cell = UIView(frame: self.frame)
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = cell.bounds
        maskLayer.path = UIBezierPath(rect: cell.bounds).cgPath
        maskLayer.opacity = 0.7
        cell.layer.mask = maskLayer
        
        let borderLayer = CAShapeLayer()
        borderLayer.path = maskLayer.path
        borderLayer.fillColor = color
        borderLayer.strokeColor = UIColor.black.cgColor
        borderLayer.lineWidth = 2
        borderLayer.frame = cell.bounds
        
        self.layer.addSublayer(borderLayer)
        
    }
    
    
}
