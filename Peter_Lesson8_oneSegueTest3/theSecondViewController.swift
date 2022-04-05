//
//  theSecondViewController.swift
//  Peter_Lesson8_oneSegueTest3
//
//  Created by Kwan Ho Leung on 5/4/2022.
//

import UIKit

class theSecondViewController: UIViewController {

    var receiveName = "default"
    
    @IBOutlet weak var theNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theNameLabel.text = receiveName
    }
    

}
