//
//  CustomTableViewCell.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func updateData(info: TableViewDataStruct?) {
        self.myImageView.image = UIImage(named: info?.image ?? "" )
        self.titleL.text = info?.title ?? ""
    }
    
    private func setUpUI() {
        self.contentView.addSubview(self.myImageView)
        self.contentView.addSubview(self.titleL)
        self.myImageView.frame = CGRect(x: 10, y: 10, width: 80, height: 80)
        self.titleL.frame = CGRect(x: 100, y: 10, width: 200, height: 13)
    }
    
    private lazy var myImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.layer.cornerRadius = 40
        view.layer.masksToBounds = true
        return view
    }()
    
    private lazy var titleL: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 13, weight: .semibold)
        label.sizeToFit()
        return label
    }()

}
