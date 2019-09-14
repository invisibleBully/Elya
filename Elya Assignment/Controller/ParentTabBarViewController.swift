//
//  ParentTabBarViewController.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import UIKit

class ParentTabBarViewController: UITabBarController {

 
    var arrayOfImageNameForSelectedState = ["home_selected","heart_selected", "search_selected", "profile_selected"]
    var arrayOfImageNameForUnselectedState = ["home_unselected","heart_unselected","search_unselected", "profile_unselected"]
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let count = self.tabBar.items?.count {
            for i in 0...(count-1) {
                let imageNameForSelectedState   = arrayOfImageNameForSelectedState[i]
                let imageNameForUnselectedState = arrayOfImageNameForUnselectedState[i]
                
                self.tabBar.items?[i].selectedImage = UIImage(named: imageNameForSelectedState)?.withRenderingMode(.alwaysOriginal)
                self.tabBar.items?[i].image = UIImage(named: imageNameForUnselectedState)?.withRenderingMode(.alwaysOriginal)
            }
        }
        let selectedColor   = #colorLiteral(red: 0.9254901961, green: 0.07058823529, blue: 0.5607843137, alpha: 1)
        let unselectedColor = #colorLiteral(red: 0.6509803922, green: 0.6509803922, blue: 0.6509803922, alpha: 1)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: unselectedColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: selectedColor], for: .selected)
    }
    

    

}
