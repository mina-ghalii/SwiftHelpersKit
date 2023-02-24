//
//  Image+EXT.swift
//  SwiftDevAssistant
//
//  Created by Mina Atef on 08/02/2023.
//

import Foundation
import UIKit

extension UIImage {
    func toBase64String (img: UIImage) -> String {
        return img.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
    }
}
