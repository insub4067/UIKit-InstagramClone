//
//  HomeVC.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/28.
//

import UIKit

class HomeVC: UIViewController {

    let logoImage = UIBarButtonItem()
    let barItemOne = UIBarButtonItem()
    let barItemTwo = UIBarButtonItem()
    let barItemThree = UIBarButtonItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setNavigationBarItems()
    }
}

private extension HomeVC {
    func setNavigationBarItems() {
        barItemOne.image = UIImage(systemName: "plus.square")
        barItemOne.tintColor = .label

        barItemTwo.image = UIImage(systemName: "heart")
        barItemTwo.tintColor = .label

        barItemThree.image = UIImage(systemName: "location")
        barItemThree.tintColor = .label

        navigationItem.rightBarButtonItems = [barItemThree, barItemTwo, barItemOne]
    }
}
