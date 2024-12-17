//
//  ReusableView.swift
//  UIComponents
//
//  Created by Baki Dikbıyık on 14.11.2024.
//

import UIKit

public protocol ReusableView: AnyObject {
    static var reuseIdentifier: String { get }
}

public extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
