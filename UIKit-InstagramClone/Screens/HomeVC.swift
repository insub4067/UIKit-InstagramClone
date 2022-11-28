//
//  HomeVC.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/28.
//

import UIKit

class HomeVC: UIViewController {

    var collectionView: UICollectionView!
    var tableView: UITableView!

    let storyView = UIView()
    let feedView = UIView()

    var barItemOne: UIBarButtonItem!
    var barItemTwo: UIBarButtonItem!
    var barItemThree: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureNavigationItems()
        layoutUI()
        getUserInfo()
    }
}

private extension HomeVC {
    func configureNavigationItems() {
        barItemOne = UIBarButtonItem()
        barItemTwo = UIBarButtonItem()
        barItemThree = UIBarButtonItem()

        let buttons: [UIBarButtonItem] = [barItemOne, barItemTwo, barItemThree]

        barItemOne.image = UIImage(systemName: "plus.square")
        barItemTwo.image = UIImage(systemName: "heart")
        barItemThree.image = UIImage(systemName: "location")

        buttons.forEach { button in
            button.tintColor = .label
        }

        navigationItem.rightBarButtonItems = buttons
    }

    func layoutUI() {
        view.addSubview(storyView)
        view.addSubview(feedView)

        storyView.translatesAutoresizingMaskIntoConstraints = false
        feedView.translatesAutoresizingMaskIntoConstraints = false

        let guide = self.view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            storyView.topAnchor.constraint(equalTo: guide.topAnchor),
            storyView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            storyView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            storyView.heightAnchor.constraint(equalToConstant: 80),

            feedView.topAnchor.constraint(equalTo: storyView.bottomAnchor),
            feedView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            feedView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            feedView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    func getUserInfo() {
        let user = NetworkManager.shared.getUserInfo()
        configureUIElements(with: user)
    }

    func configureUIElements(with user: User) {
        add(childVC: StoryVC(followers: user.followers), to: storyView)
        add(childVC: FeedVC(followers: user.followers), to: feedView)
    }

    func add(childVC: UIViewController, to container: UIView) {
        addChild(childVC)
        container.addSubview(childVC.view)
        childVC.view.frame = container.bounds
        childVC.didMove(toParent: self)
    }
}


extension HomeVC {
    func configureCollectionView() {
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 80)

        collectionView = UICollectionView(frame: frame, collectionViewLayout: UIHelper.createHorizontalLayout())
        view.addSubview(collectionView)

        collectionView.backgroundColor = .gray
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        let guide = self.view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: guide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }

    func configureTableView() {
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height - collectionView.frame.height)

        tableView = UITableView(frame: frame, style: .plain)
        view.addSubview(tableView)

        tableView.backgroundColor = .blue
        tableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: collectionView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
