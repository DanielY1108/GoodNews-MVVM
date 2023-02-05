//
//  UINavigationBar+.swift
//  GoodNews
//
//  Created by JINSEOK on 2023/02/05.
//

import UIKit

extension UINavigationController {
    func customiseStyle() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .darkGray
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        
        navigationItem.standardAppearance = appearance
        navigationItem.compactAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        navigationBar.prefersLargeTitles = true
    }
}
