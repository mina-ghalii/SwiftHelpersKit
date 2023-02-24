//
//  ViewController.swift
//  XCodeGenExampleApp
//
//  Created by Mina Atef on 17/11/2022.
//

import UIKit
import SwiftHelpersKit
class ViewController: UIViewController {
    var myString: Observable<String> = Observable("")
    override func viewDidLoad() {
        super.viewDidLoad()
        myString.value = "SwiftHelpersKit"
        myString.observe { string in
            // use the string when any value set to it
        }
    }
}
