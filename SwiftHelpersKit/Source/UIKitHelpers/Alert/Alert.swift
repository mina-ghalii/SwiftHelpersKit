//
//  Alert.swift
//  SwiftDevAssistant
//
//  Created by Mina Atef on 08/02/2023.
//

import Foundation
import UIKit
public class Alert {
    static var isAlertActive = false
    public static func show(alertTitle: String,
                            alertBody: String,
                            actionTitle: String,
                            cancelTitle: String,
                            actionComplition: @escaping () -> Void,
                            cancelComplition: @escaping () -> Void) {
        if isAlertActive {
            return
        }
        isAlertActive = true
        DispatchQueue.main.async {
            let alert = UIAlertController(title: alertTitle, message: alertBody, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: actionTitle, style: .default) { _ in
                actionComplition()
                isAlertActive = false
            })
            
            if cancelTitle != "" {
                alert.addAction(UIAlertAction(title: cancelTitle, style: UIAlertAction.Style.cancel) { _ in
                    cancelComplition()
                    isAlertActive = false
                })
            }
            alert.viewDidLayoutSubviews()
            UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
        }
    }
    
}
