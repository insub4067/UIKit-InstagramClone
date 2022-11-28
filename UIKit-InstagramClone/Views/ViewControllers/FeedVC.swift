//
//  FeedVC.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/29.
//

import UIKit

class FeedVC: UIViewController {

    var tableView: UITableView!

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
        configureTableView()
    }
}

private extension FeedVC {
    func configureTableView() {
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = .cyan
        view.addSubview(tableView)
    }
}
