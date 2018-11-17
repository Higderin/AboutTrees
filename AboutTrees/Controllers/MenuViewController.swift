//
//  MenuViewController.swift
//  AboutTrees
//
//  Created by Yaroslav on 16/11/2018.
//  Copyright © 2018 Yaroslav. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    //MARK:- Outlets & Actions
    @IBOutlet weak var encSV: SectionView! { didSet { encSV.dropShadow() } }
    @IBOutlet weak var quizSV: SectionView! { didSet { quizSV.dropShadow() } }
    @IBOutlet weak var mapSV: SectionView! { didSet { mapSV.dropShadow() } }
    
    @IBAction func sectionTapped(_ sender: UITapGestureRecognizer) {
        var segueIndentifier: String!
        
        switch sender.view?.frame {
        case encSV.frame: segueIndentifier = "toEnc"
        case quizSV.frame: segueIndentifier = "toQuiz"
        case mapSV.frame: segueIndentifier = "toMap"
        default: return
        }
        
        segueIndentifier != nil ? self.performSegue(withIdentifier: segueIndentifier, sender: nil) : nil
    }
    
    //MARK:- Other stuff
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "MainBackground")!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
