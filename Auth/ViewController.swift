//
//  ViewController.swift
//  Auth
//
//  Created by Мария Макарова on 28.10.2026.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var passwordTextInput: UITextField!
    @IBOutlet private weak var userTextInput: UITextField!
    @IBOutlet private weak var logInButton: UIButton!
    @IBOutlet private weak var saveUserSwitch: UISwitch!


    // MARK: - Constants
    private let savedUserNameKey: String = "savedUserNameKey"

    // MARK: - Properties
    private var userName = ""

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        userName = UserDefaults.standard.string(forKey: savedUserNameKey) ?? ""
        userTextInput.text = userName
    }

    // MARK: - IBActions
    @IBAction func didTapLogInButton(_ sender: UIButton) {
        guard saveUserSwitch.isOn else { return UserDefaults.standard.removeObject(forKey: savedUserNameKey) }
        if let text = userTextInput.text {
            UserDefaults.standard.set(text, forKey: savedUserNameKey)
        }
    }
}

