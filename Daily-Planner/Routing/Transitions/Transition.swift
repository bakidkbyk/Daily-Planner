//
//  Transition.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import UIKit

protocol Transition: AnyObject {
    var viewController: UIViewController? { get set }

    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
