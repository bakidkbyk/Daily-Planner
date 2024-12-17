//
//  HomeRoute.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 14.11.2024.
//

import UIKit

protocol HomeRoute {
    func presentHome()
}

extension HomeRoute where Self: RouterProtocol {
    
    func presentHome() {
        let router = HomeRouter()
        let viewModel = HomeViewModel(router: router)
        let viewController = HomeViewController(viewModel: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(navigationController, transition: transition)
    }
}
