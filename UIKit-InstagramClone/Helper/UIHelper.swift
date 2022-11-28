//
//  UIHelper.swift
//  UIKit-InstagramClone
//
//  Created by Kim Insub on 2022/11/28.
//

import UIKit

enum UIHelper {
    static func createHorizontalLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 40, height: 40)
        return  layout
    }

    static func createHomeFeedLayout(in superview: UIView) -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        let width = superview.frame.width
        layout.itemSize = CGSize(width: width, height: width + 200)
        return layout
    }
}
