//
//  AppearanceHelper.swift
//  Lambda Messages Theming
//
//  Created by Michael Stoffer on 6/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    static var lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var backgroundGrey = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func typeRighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func style(button: UIButton) {
        button.titleLabel?.font = typeRighterFont(with: .callout, pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        button.layer.cornerRadius = 8.0
    }

    static func setDarkAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundGrey
        UISegmentedControl.appearance().tintColor = lambdaRed
        UIBarButtonItem.appearance().tintColor = lambdaRed
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed

        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
    }
}
