//
//  LabelViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class LabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        let label = UILabel(frame: CGRect(x: 10,y: 100, width: self.view.frame.width - 20, height: 48))
        label.text = "普通的文字标签，可设置颜色，字号，和字体大小，对齐方式"
        label.textColor = .orange
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textAlignment = .left
        label.numberOfLines = 2
        self.view.addSubview(label)
        
        let attrLabel = UILabel(frame: CGRect(x: 10,y: 100 + 58, width: self.view.frame.width - 20, height: 28))
        attrLabel.numberOfLines = 0
        self.view.addSubview(attrLabel)
        let allStr = "label可以使用富文本方式，通过设置key，改变文本样式>>>>>"
        let attr = NSMutableAttributedString(string: allStr, attributes: [NSAttributedString.Key.foregroundColor : UIColor.black, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14, weight: .regular)])
        let range = (allStr as NSString).range(of: "label")
        attr.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16, weight: .regular)], range: range)
        attrLabel.attributedText = attr
        attrLabel.sizeToFit()
        
    }
  

}
