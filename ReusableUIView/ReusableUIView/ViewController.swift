//
//  ViewController.swift
//  ReusableUIView
//
//  Created by 김태형 on 2020/04/02.
//  Copyright © 2020 김태형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionLogin(_ sender: Any) {
        //show reusable login view
        let loginView = ReuseableLoginView()
        loginView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(loginView)
        loginView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        loginView.heightAnchor.constraint(equalToConstant: 214).isActive = true
        loginView.widthAnchor.constraint(equalToConstant: 366).isActive = true
    

    }
    
}

