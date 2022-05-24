//
//  ControllerViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class ControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    deinit {
        tabVC.willMove(toParent: nil)
        tabVC.view.removeFromSuperview()
        tabVC.removeFromParent()
        
    }
    
    private func setUpUI() {
        
        let vc = UIViewController()
        vc.navigationItem.title = "导航1"
        let nvc = UINavigationController(rootViewController: vc)
        
        tabVC.addChild(nvc)
        nvc.tabBarItem.title = "菜单1"
        
        let vc2 = UIViewController()
        vc2.navigationItem.title = "导航2"
        let nvc2 = UINavigationController(rootViewController: vc2)
        tabVC.addChild(nvc2)
        nvc2.tabBarItem.title = "菜单2"
        
        tabVC.tabBar.barStyle = .black
        tabVC.tabBar.backgroundColor = .gray
        tabVC.tabBar.tintColor = .orange
        tabVC.tabBar.unselectedItemTintColor = .black
        
        self.addChild(tabVC)
        tabVC.didMove(toParent: self)
        tabVC.modalPresentationCapturesStatusBarAppearance = true
        self.view.addSubview(tabVC.view)
    }
    
    
    private lazy var tabVC: UITabBarController = {
        return UITabBarController()
    }()

   

}
