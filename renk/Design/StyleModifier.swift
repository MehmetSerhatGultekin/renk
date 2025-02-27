//
//  LogInVCComponentsDesign.swift
//  renk
//
//  Created by Mehmet Serhat Gültekin on 27.02.2025.
//

import Foundation
import UIKit

public func textFieldsdAttributes (textField1: UITextField, textfield2: UITextField) {
    let tf = textField1
    tf.borderStyle = .none
    tf.layer.cornerRadius = 12
    tf.layer.borderWidth = 1
    tf.layer.borderColor = UIColor.gray.cgColor
    tf.layer.shadowColor = UIColor.black.cgColor
    tf.layer.shadowOffset = CGSize(width: 2, height: 2)
    tf.layer.shadowOpacity = 0.5
    tf.layer.shadowRadius = 5
        tf.layer.masksToBounds = false
    
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf.frame.height))
    tf.leftView = paddingView
    tf.leftViewMode = .always
    
    tf.attributedPlaceholder = NSAttributedString(
        string: "email veya telefon numarası",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.4)]
    )
    
    let tf2 = textfield2
    tf2.borderStyle = .none
    tf2.layer.cornerRadius = 12
    tf2.layer.borderWidth = 1
    tf2.layer.borderColor = UIColor.gray.cgColor
    tf2.layer.shadowColor = UIColor.black.cgColor
    tf2.layer.shadowOffset = CGSize(width: 2, height: 2)
    tf2.layer.shadowOpacity = 0.5
    tf2.layer.shadowRadius = 5
    tf2.layer.masksToBounds = false
    
    let paddingView2 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tf2.frame.height))
    tf2.leftView = paddingView2
    tf2.leftViewMode = .always
    
    tf2.attributedPlaceholder = NSAttributedString(
        string: "şifre",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.4)]
    )

    
    
}

public func logInButtonAttributes (button: UIButton) {
    let button = button
    
    button.layer.cornerRadius = 12
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.gray.cgColor
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOffset = CGSize(width: 2, height: 2)
    button.layer.shadowOpacity = 0.5
    button.layer.shadowRadius = 5
    button.layer.masksToBounds = false
    //button.self.backgroundColor = .none
    
    
    
}




