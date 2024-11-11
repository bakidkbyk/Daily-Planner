//
//  DetailPlannerRoute.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import UIKit

protocol DetailPlannerRoute {
    func presentDetailPlanner()
}

extension DetailPlannerRoute where Self: RouterProtocol {
    
    func presentDetailPlanner() {
        let router = DetailPlannerRouter()
        let viewModel = DetailPlannerViewModel(router: router)
        let viewController = DetailPlannerViewController(viewModel: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)

        
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(navigationController, transition: transition)
    }
}
