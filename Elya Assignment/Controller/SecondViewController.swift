//
//  SecondViewController.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import UIKit
import Kingfisher
import BubbleShowCase



class SecondViewController: UIViewController {
    

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var unsplashImageView: UIImageView!
    @IBOutlet weak var unsplashButton: RoundCornerButton!
    var viewedTutorial: Bool {
        get {
            return defaults.bool(forKey: "viewedTutorial")
        }
        set {
            defaults.set(newValue, forKey: "viewedTutorial")
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.generateImage()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if !viewedTutorial {
            displayTip()
        }
    }
    
    
    
    @IBAction func unsplashClicked(_ sender: Any) {
        generateImage()
    }
    
    
    func generateImage(){
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        DataService.instance.makeRandomPhotoRequest { (success, url)  in
            if success {
                let url = URL(string: url)!
                self.unsplashImageView.kf.setImage(with: url)
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            }else{
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            }
        }
    }
    
    func displayTip(){
        let showCaseOnView = BubbleShowCase(target: unsplashButton, arrowDirection: .up, label: "")
        showCaseOnView.descriptionText = "Tap on the unsplash button to generate another image"
        showCaseOnView.arrowDirection = .up
        showCaseOnView.shadowColor = unsplashButton.titleColor(for: .normal)
        showCaseOnView.isCrossDismissable = true
        showCaseOnView.color = UIColor(red: 48.0/255.0, green: 129/255.0, blue: 210.0/255.0, alpha: 1.0)
        showCaseOnView.frame.size.height = 500
        showCaseOnView.delegate = self
        showCaseOnView.show()
    }
    
    
}




extension SecondViewController: BubbleShowCaseDelegate {
    func bubbleShowCaseDidDismiss(_ bubbleShowCase: BubbleShowCase) {
        viewedTutorial = true
    }
    

}
