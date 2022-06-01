//
//  TextFieldViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class TextFieldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        
        let tf = UITextField(frame: CGRect(x: 10, y: 100, width: self.view.frame.width - 20, height: 44))
        tf.borderStyle = .none
        tf.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 0.1)
        tf.attributedPlaceholder = NSAttributedString(string: "搜索", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14, weight: .regular), NSAttributedString.Key.foregroundColor : UIColor.orange])
        self.view.addSubview(tf)
    }

}
