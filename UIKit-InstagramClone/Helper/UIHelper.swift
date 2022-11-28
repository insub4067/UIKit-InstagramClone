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
}
