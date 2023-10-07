//
//  ViewController.swift
//  LoginView
//
//  Created by Даниил on 05.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - Outlet
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var buttonEnter: UIButton!
    @IBOutlet weak var buttonForgotLogin: UIButton!
    @IBOutlet weak var buttonForgotPassword: UIButton!
    
    //MARK: - Private proporty
    
    private let login = "admin"
    private let password = "123"
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButton()
        setupTF()
    }
    
    //MARK: - Override func
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginTF.text == login, passwordTF.text == password else {
            showAlert(title: "Ошибка", message: "Неверные данные")
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else {
            return }
        helloVC.hello = "Welcom \(loginTF.text ?? " ")!"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
    
    //MARK: - Unwind
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is HelloViewController else {
            return }
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - ActionButton
    
    @IBAction func actionButtonEnter() {
        shouldPerformSegue(withIdentifier: "fromLoginVc", sender: nil)
        performSegue(withIdentifier: "fromLoginVc", sender: nil)
    }
    
    @IBAction func actionButtonForgotLogin() {
        showAlert(title: "Your login", message: login)
    }
    
    @IBAction func actionButtonForgotPassword() {
        showAlert(title: "Your password", message: password)
    }
}
    
    // MARK: - Setting View

    private extension LoginViewController {
        func setupTF() {
            loginTF.layer.cornerRadius = 15
            passwordTF.layer.cornerRadius = 15
        }
        
        func setupButton() {
            buttonEnter.layer.cornerRadius = 20
        }
    }

    //MARK: - SettingAlert

    private extension LoginViewController {
        func showAlert(title: String, message: String) {
            let alert =  UIAlertController(title: title, message: message, preferredStyle: .alert)
            let alertButton = UIAlertAction(title: "Ок", style: .default)
            alert.addAction(alertButton)
            present(alert, animated: true)
        }
    }

