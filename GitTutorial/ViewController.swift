//
//  ViewController.swift
//  GitTutorial
//
//  Created by JustMac on 13/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnGitTutorial: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // The main branch code is also updated in NewFeature.. but this should not be available at main
    }


    @IBAction func gitAction(_ sender: UIButton) {
        print("Hello GitHub")
    }
}

