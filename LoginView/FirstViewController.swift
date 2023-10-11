//
//  FirstViewController.swift
//  LoginView
//
//  Created by Даниил on 11.10.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    //MARK: - Outlet
    @IBOutlet weak var labelDescribe: UILabel!
    
    //MARK: - Property
    
    var desc: String!
    
    //MARK: - viewDid
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelDescribe.text = desc
    }
    
}
