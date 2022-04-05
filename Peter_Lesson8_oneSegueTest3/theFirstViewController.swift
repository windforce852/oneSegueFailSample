//
//  theFirstViewController.swift
//  Peter_Lesson8_oneSegueTest3
//
//  Created by Kwan Ho Leung on 5/4/2022.
//

import UIKit

class theFirstViewController: UIViewController {

    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showPlaceButtonTap(_ sender: UIButton) {
    var placeName = ""
        switch sender{
        case buttonA: placeName = "London"
        case buttonB: placeName = "NewYork"
        case buttonC: placeName = "Paris"
        default: break
        }
    performSegue(withIdentifier: "theFirstToTheSecond", sender: placeName)
    }
    
    @IBSegueAction func sendPlaceName(_ coder: NSCoder, sender: Any?) -> theSecondViewController? {
        let controllerB = theSecondViewController(coder: coder)
        controllerB?.receiveName = sender as? String ?? "empty"
        return controllerB
    }

}
