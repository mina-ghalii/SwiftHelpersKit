//
//  ButtonsHelper.swift
//  ValifyOCR
//
//  Created by Mina Atef on 30/05/2022.
//

import UIKit

public class ViewHelper: UIView {
    
    public override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    @IBInspectable public var viewBorderColor: UIColor = .darkGray {
        didSet {
            self.layer.borderColor = viewBorderColor.cgColor
            self.layer.borderWidth = 1.0
        }
    }
    
    @IBInspectable public var viewBorderWidth: CGFloat = 1.0 {
        didSet {
            self.layer.borderWidth = viewBorderWidth
        }
    }
    
    @IBInspectable public var cornerR: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerR
        }
    }
    
    @IBInspectable public var shadow: CGFloat = 0 {
        didSet {
            layer.shadowColor = UIColor.lightGray.cgColor
            layer.shadowOffset = CGSize(width: 0, height: shadow)
            layer.shadowOpacity = 0.2
        }
    }
    
}
