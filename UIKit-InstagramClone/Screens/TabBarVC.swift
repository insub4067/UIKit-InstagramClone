//
//  ViewController.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/28.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let controllers = Tab.allCases.map{ $0.controller }
        viewControllers = controllers
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemBackground
    }
}

private extension TabBarVC {
    enum Tab: CaseIterable {
        case home, search, profile

        var controller: UINavigationController {
            switch self {
            case .home:
                let vc = HomeVC()
                let image = UIImage(systemName: "house.fill")
                vc.tabBarItem = UITabBarItem(title: "Home", image: image, tag: 0)
                return UINavigationController(rootViewController: vc)
            case .search:
                let vc = SearchVC()
                let image = UIImage(systemName: "magnifyingglass")
                vc.tabBarItem = UITabBarItem(title: "Search", image: image, tag: 1)
                return UINavigationController(rootViewController: vc)
            case .profile:
                let vc = ProfileVC()
                let image = UIImage(systemName: "person.circle.fill")
                vc.tabBarItem = UITabBarItem(title: "Profile", image: image, tag: 2)
                return UINavigationController(rootViewController: vc)
            }
        }
    }
}
