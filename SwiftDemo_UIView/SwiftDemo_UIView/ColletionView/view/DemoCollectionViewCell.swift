//
//  DemoCollectionViewCell.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/6/1.
//

import UIKit

class DemoCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        self.contentView.backgroundColor = .gray
    }
}
