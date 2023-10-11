//
//  HelloViewController.swift
//  LoginView
//
//  Created by Даниил on 06.10.2023.
//

import UIKit

final class HelloViewController: UIViewController {

    //MARK: - Outlet
    
    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelFemale: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    
    //MARK: - proporty
    
    var name: String!
    var female: String!
    var age: String!
    var city: String!
    
    //MARK: ViewDid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelHello.text = "Приветствую"
        labelName.text = "Ваше имя: " + name
        labelFemale.text = "Ваша фамилия: " + female
        labelCity.text = "Ваш город: " + city
        labelAge.text = "Ваш возраст: " + age
    }
}
