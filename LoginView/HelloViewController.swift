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
    
    var hello: String!
    
    //MARK: ViewDid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelHello.text = "Welcom \(hello ?? " ")!"
    }
}
