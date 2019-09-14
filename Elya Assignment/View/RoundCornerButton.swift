//
//  RoundCornerButton.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable

class RoundCornerButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 5 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
    

    
    
    
}
