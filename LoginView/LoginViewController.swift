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
    
    //MARK: - Private proporty
    
    private let login = "admin"
    private let password = "123"
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        helloVC.hello = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Unwind
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - ActionButton
    
    @IBAction func buttonForgot(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Ошибка", message: "Ваш логин: \(login)")
        } else if sender.tag == 1 {
            showAlert(title: "Ошибка", message: "Ваш пароль: \(password)")
            passwordTF.text = ""
        }
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
