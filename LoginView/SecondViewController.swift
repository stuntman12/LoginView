//
//  SecondViewController.swift
//  LoginView
//
//  Created by Даниил on 11.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: - Outlet
    @IBOutlet weak var labelNameCity: UILabel!
    @IBOutlet weak var labelDescCity: UILabel!
    
    //MARK: - property
    
    var nameCity: String!
    var cityDesc: String!
    
    //MARK: viewDid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelDescCity.text = cityDesc
        labelNameCity.text = nameCity
    }
}
