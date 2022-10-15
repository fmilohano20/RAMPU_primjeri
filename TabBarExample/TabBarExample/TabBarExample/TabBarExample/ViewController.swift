//
//  ViewController.swift
//  TabBarExample
//
//  Created by ASELab on 15.10.2022..
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        self.tabBar.isTranslucent = false
        tabBar.backgroundColor = .yellow
        
        let tab1 = Tab1ViewController()
        let tab1Item = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.contacts, tag: 1)
        
        tab1.tabBarItem = tab1Item
        
        let tab2 = Tab2ViewController()
        let tab2Item = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.bookmarks, tag: 2)
        tab2.tabBarItem = tab2Item
        
        viewControllers = [tab1,tab2]
        
        
    }
}

