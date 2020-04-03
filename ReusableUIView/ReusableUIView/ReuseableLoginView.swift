//
//  ReuseableLoginView.swift
//  ReusableUIView
//
//  Created by 김태형 on 2020/04/03.
//  Copyright © 2020 김태형. All rights reserved.
//

import UIKit

class ReuseableLoginView: UIView {
    
    
    @IBOutlet weak var tfId: UITextField!
    @IBOutlet weak var tfPw: UITextField!
    
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    let xibName = "LoginView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit(){
        let view = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
}
