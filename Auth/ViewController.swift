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
    @IBOutlet private weak var saveSwitchUser: UISwitch!


    // MARK: - Constants

    private var savedUserNameKey: String = "savedUserNameKey"
    private var userName = ""

    // MARK: - IBActions
    @IBAction func didTapLogInButton(_ sender: UIButton) {
        guard saveSwitchUser.isOn else { return }
        if let text = userTextInput.text {
            UserDefaults.standard.set(text, forKey: savedUserNameKey)
        }

    }

    @IBAction func didSwitchSaveUser(_ sender: UISwitch) {
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        userName = UserDefaults.standard.string(forKey: savedUserNameKey) ?? String()
        userTextInput.text = userName
    }
}

