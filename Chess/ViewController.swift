//
//  ViewController.swift
//  Chess
//
//  Created by Loc Tran on 3/6/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameManager: GameManager?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.gameManager = GameManager()
        self.gameManager?.addBoardToViewController(self, size: self.view.bounds.size.width)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

