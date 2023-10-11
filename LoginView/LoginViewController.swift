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
    
    //MARK: - Proporty
    
    let user = User.getUser()
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Override func
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginTF.text == user.login, passwordTF.text == user.password else {
            showAlert(title: "Ошибка", message: "Неверные данные")
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {
            return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        viewControllers.forEach { if let helloVC = $0 as? HelloViewController {
            helloVC.name = user.person.name
            helloVC.female = user.person.female
            helloVC.age = user.person.age
            helloVC.city = user.person.city
            }
        }
        viewControllers.forEach { if let FirstVC = $0 as? FirstViewController {
            FirstVC.desc = user.person.describe
            }
        }
        viewControllers.forEach { if let SecondVC = $0 as? SecondViewController {
            SecondVC.nameCity = user.person.city
            SecondVC.cityDesc = user.person.cityDescMoscow
            }
        }
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
            showAlert(title: "Ошибка", message: "Ваш логин: \(user.login)")
        } else if sender.tag == 1 {
            showAlert(title: "Ошибка", message: "Ваш пароль: \(user.password)")
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
