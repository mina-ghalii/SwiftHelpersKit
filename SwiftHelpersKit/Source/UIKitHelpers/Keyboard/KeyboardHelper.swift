//
//  KeyboardHelper.swift
//  SwiftDevAssistant
//
//  Created by Mina Atef on 05/02/2023.
//

import Foundation
import UIKit

extension UIViewController {
    public func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
