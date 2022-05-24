//
//  ImageViewViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class ImageViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.layer.cornerRadius = 4
        view.layer.masksToBounds = true
        view.image = UIImage(named: "pic_no_content_small")
        self.view.addSubview(view)
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        view.center = self.view.center
    }
    

}
