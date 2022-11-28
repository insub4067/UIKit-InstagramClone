//
//  NetworkManager.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/29.
//

import Foundation

fileprivate enum MockData {
    static let followers: [User] = [
        User(name: "Andy", avatarImage: "", followers: []),
        User(name: "Robin", avatarImage: "", followers: []),
        User(name: "Theo", avatarImage: "", followers: []),
        User(name: "Jayden", avatarImage: "", followers: []),
        User(name: "Wendy", avatarImage: "", followers: []),
    ]

    static let user = User(name: "Woody", avatarImage: "", followers: [])
}

class NetworkManager {
    static let shared = NetworkManager()

    func getUserInfo() -> User {
        return MockData.user
    }
}
