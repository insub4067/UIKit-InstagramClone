//
//  StoryVC.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/29.
//

import UIKit

class StoryVC: UIViewController {

    var collectionView: UICollectionView!

    var followers: [User]!

    init(followers: [User]!) {
        super.init(nibName: nil, bundle: nil)
        self.followers = followers
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
}

private extension StoryVC {
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createHorizontalLayout())
        collectionView.backgroundColor = .brown
        view.addSubview(collectionView)
    }
}
