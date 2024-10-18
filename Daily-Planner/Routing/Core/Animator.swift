//
//  Animator.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
