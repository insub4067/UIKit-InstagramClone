//
//  HomeVC.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/28.
//

import UIKit

class HomeVC: UIViewController {

    let navigationBar = UINavigationBar()
    let logoImage = UIBarButtonItem()
    let barItemOne = UIBarButtonItem()
    let barItemTwo = UIBarButtonItem()
    let barItemThree = UIBarButtonItem()

    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setNavigationBarItems()
        setCollectionView()
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

    func setCollectionView() {

        collectionView = UICollectionView(frame: CGRect(x: navigationBar.frame.height, y: 0, width: view.frame.width, height: 80), collectionViewLayout: UIHelper.createHorizontalLayout())
        view.addSubview(collectionView)

        collectionView.backgroundColor = .gray
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        let guide = self.view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: guide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
