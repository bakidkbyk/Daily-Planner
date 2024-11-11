//
//  AppRouter.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import Foundation

final class AppRouter: Router, AppRouter.Routes {
    
    typealias Routes = DetailPlannerRoute
    static let shared = AppRouter()
    
    func startApp() {
        presentDetailPlanner()
    }
}
