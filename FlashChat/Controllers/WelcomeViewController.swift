//
//  WelcomeViewController.swift
//  FlashChat
//
//  Created by Snigdha Tiwari  on 11/07/2025.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.appName
    }


}

