//
//  UINavigationBarExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 8/22/16.
//  Copyright © 2016 Omar Albeik. All rights reserved.
//

#if os(iOS) || os(tvOS)
import UIKit


// MARK: - Methods
extension UINavigationBar {
	
	/// SwifterSwift: Set Navigation Bar title, title color and font.
	///
	/// - Parameters:
	///   - font: title font
	///   - color: title text color (default is .black).
	public func setTitleFont(_ font: UIFont, color: UIColor = UIColor.black) {
		var attrs = [NSAttributedString.Key: Any]()
		attrs[NSAttributedString.Key.font] = font
		attrs[NSAttributedString.Key.foregroundColor] = color
		titleTextAttributes = attrs
	}
	
	/// SwifterSwift: Make navigation bar transparent.
	///
	/// - Parameter withTint: tint color (default is .white).
	public func makeTransparent(withTint: UIColor = .white) {
		setBackgroundImage(UIImage(), for: .default)
		shadowImage = UIImage()
		isTranslucent = true
		tintColor = withTint
		titleTextAttributes = [NSAttributedString.Key.foregroundColor: withTint]
	}
	
	/// SwifterSwift: Set navigationBar background and text colors
	///
	/// - Parameters:
	///   - background: backgound color
	///   - text: text color
	public func setColors(background: UIColor, text: UIColor) {
		isTranslucent = false
		backgroundColor = background
		barTintColor = background
		setBackgroundImage(UIImage(), for: UIBarMetrics.default)
		tintColor = text
		titleTextAttributes = [NSAttributedString.Key.foregroundColor: text]
	}
}
#endif
