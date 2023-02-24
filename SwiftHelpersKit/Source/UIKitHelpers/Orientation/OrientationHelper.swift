//
//  OrientationHelper.swift
//  SwiftDevAssistant
//
//  Created by Mina Atef on 05/02/2023.
//

import Foundation
import UIKit

class CustomNavigationController: UINavigationController {
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return OrientationHelper.state
    }
}

class OrientationHelper {
    static let state: UIInterfaceOrientationMask  = .portrait
}
