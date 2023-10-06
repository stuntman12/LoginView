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
    @IBOutlet weak var buttonLogOut: UIButton!
    
    var hello: String!
    
    //MARK: ViewDid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButton()
        setupLabel()
        
        labelHello.text = hello
    }
}

//MARK: - SettingView

extension HelloViewController {
    func setupButton() {
        buttonLogOut.layer.cornerRadius = 15
    }
    func setupLabel() {
        labelHello.font = .preferredFont(forTextStyle: .largeTitle)
    }
}

