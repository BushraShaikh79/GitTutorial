//
//  NewFeature.swift
//  GitTutorial
//
//  Created by JustMac on 13/11/20.
//

import UIKit
import MapKit

class GitCommandsReference: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //After deleting branch
        print("NewFeature")
    }
    
    //MARK: - to create .gitignore globally for each mac
    /*Terminal Commands:
     1. Create Global config alias - One time only
     $ git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'

     2. For each Project (note ANGLE BRACKETS ARE NOT ALLOWED IN A YOUTUBE DESCRIPTION
     Change the ] below to a 'greater than' angle bracket

     cd --directory where your project is stored--
     git ignore swift,macos ].gitignore
     git add .gitignore
     git commit -m "Add .gitignore file"*/
    
    //MARK: - to create .gitignore for perticular project
    /*
     1) Open terminal
     2) cd projectpath
     3) (type command) touch .gitignore
     4) Go to Finder of mac press Command + Shift + .
     5) You are able to see the hidden files. Click to open .gitignore file
     6) Goto gitignore.io from browser and type macOS >> select, swift >> select in the searchbar
     7) Hit Create button, copy all the contents and paste in your .gitignore file (open in step 5)
     */
}
