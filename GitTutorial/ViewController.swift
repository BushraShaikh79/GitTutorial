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
        // Do any additional setup after loading the view.
    }


    @IBAction func gitAction(_ sender: UIButton) {
        print("Hello GitHub")
    }
}

