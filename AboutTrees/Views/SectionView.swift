//
//  SectionView.swift
//  AboutTrees
//
//  Created by Yaroslav on 16/11/2018.
//  Copyright © 2018 Yaroslav. All rights reserved.
//

import UIKit

class SectionView: UIView {
    
    @IBInspectable var borderColor: UIColor {
        get { return UIColor(cgColor: layer.borderColor!) }
        set {
            layer.borderColor = newValue.cgColor
            //layer.shadowColor = newValue.cgColor
        }
    }
    /*let sectionNames = ["Энциклопедия", "Викторина", "Карта"]
    let sectionDescription = ["Узнай всё о деревьях!", "Проверь свои знания в увлекательной викторине", "Найди растительность рядом"] */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 10
    }
    
    func dropShadow() {
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.3
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
