//
//  Authentication.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/1/23.
//

import Foundation
import SwiftUI
import UIKit

struct User {
    let uid: String
    let email: String
    let username: String
    let age: Int
    let avatar: UIImage
    var virtualMoney: Double
}

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        let email = emailTextField.text ?? ""
        let username = usernameTextField.text ?? ""
        let age = Int(ageTextField.text ?? "") ?? 0
        let avatar = avatarImageView.image ?? UIImage(named: "default_avatar")!
        let virtualMoney = 1000.0
        
        _ = User(uid: UUID().uuidString, email: email, username: username, age: age, avatar: avatar, virtualMoney: virtualMoney)
        
        // Save user data and proceed to the next screen
        // ...
    }
}
