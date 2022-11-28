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
        viewControllers = [createHomeVC(), createSearchVC(), createProfileVC()]
        tabBar.tintColor = .label
    }
}

private extension TabBarVC {
    func createHomeVC() -> UINavigationController {
        let vc = HomeVC()
        let image = UIImage(systemName: "house.fill")
        vc.tabBarItem = UITabBarItem(title: "Home", image: image, tag: 0)

        return UINavigationController(rootViewController: vc)
    }

    func createSearchVC() -> UINavigationController {
        let vc = SearchVC()
        let image = UIImage(systemName: "magnifyingglass")
        vc.tabBarItem = UITabBarItem(title: "Home", image: image, tag: 1)

        return UINavigationController(rootViewController: vc)
    }

    func createProfileVC() -> UINavigationController {
        let vc = ProfileVC()
        let image = UIImage(systemName: "person.circle.fill")
        vc.tabBarItem = UITabBarItem(title: "Profile", image: image, tag: 2)

        return UINavigationController(rootViewController: vc)
    }
}

