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
    
    @IBOutlet weak var imageView: UIImageView!
    
    var hello: String!
    
    //MARK: ViewDid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "smail")
        
        setupButton()
        setupLabel()
        
        labelHello.text = hello
    }
}

//MARK: - SettingView

extension HelloViewController {
    func setupButton() {
        buttonLogOut.layer.cornerRadius = 20
    }
    func setupLabel() {
        labelHello.font = .preferredFont(forTextStyle: .largeTitle)
    }
}

