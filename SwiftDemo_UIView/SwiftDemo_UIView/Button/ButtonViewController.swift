//
//  ButtonViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        let button = UIButton(frame: CGRect(origin: CGPoint(x: 100, y: 100), size: CGSize(width: 100, height: 54)))
        button.setTitle("点击", for: .normal)
        button.setTitle("已选中", for: .selected)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.white, for: .selected)

        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(buttonEvent(button:)), for: .touchUpInside)
        self.view.addSubview(button)
        //button 还可以图文结合使用， 和富文本使用
        let button02 = UIButton(frame: CGRect(origin: CGPoint(x: 100, y: 200), size: CGSize(width: 100, height: 54)))
        button02.setImage(UIImage(named: "tab_camp_nor"), for: .normal)
        button02.setTitle("标记", for: .normal)
        button02.backgroundColor = .black
        button02.setTitleColor(.white, for: .normal)
        button02.titleLabel?.adjustsFontSizeToFitWidth = true
        //iOS15后新方式
        if #available(iOS 15.0, *) {
            button02.configuration = UIButton.Configuration.plain()
            button02.configuration?.imagePadding = 10
           
            button02.updateConfiguration()
            
        } else {
            button02.imageEdgeInsets = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 0)
            button02.titleEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 50)
        }
        
        self.view.addSubview(button02)
    }
    @objc
    private func buttonEvent(button: UIButton) {
        button.isSelected = !button.isSelected
    }

}
