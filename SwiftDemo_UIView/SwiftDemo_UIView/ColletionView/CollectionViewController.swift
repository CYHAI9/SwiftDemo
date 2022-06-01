//
//  CollectionViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class CollectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        self.view.addSubview(self.collectionView) 
    }

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 12
        layout.minimumLineSpacing = 12
        layout.itemSize = CGSize(width: 150, height: 100)
        layout.scrollDirection = .horizontal
        let colletion = UICollectionView(frame: CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 100), collectionViewLayout: layout)
        colletion.delegate = self
        colletion.dataSource = self
        colletion.register(DemoCollectionViewCell.self, forCellWithReuseIdentifier: "DemoCollectionViewCell")
        colletion.backgroundColor = .white
        colletion.showsHorizontalScrollIndicator = false
        return colletion
    }()

}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCollectionViewCell", for: indexPath)
        
        return cell
    }
}
