//
//  ViewViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class ViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        let view = UIView(frame: CGRect(x: 10, y: 10, width: self.view.frame.size.width - 20, height: self.view.frame.size.height - 20))
        view.backgroundColor = UIColor(red: 0.6, green: 0.1, blue: 0.2, alpha: 0.5)
        self.view.addSubview(view)
        
        let view02 = UIView(frame: CGRect(x: 100, y: 100, width: self.view.frame.size.width - 200, height: self.view.frame.size.height - 200))
        view02.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.6, alpha: 0.7)
        view.addSubview(view02)
    }
    

}
