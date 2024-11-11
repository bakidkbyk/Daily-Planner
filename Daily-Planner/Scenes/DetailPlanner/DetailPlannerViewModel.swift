//
//  DetailPlannerViewModel.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import Foundation

protocol DetailPlannerViewDataSource {}

protocol DetailPlannerViewEventSource {}

protocol DetailPlannerViewProtocol: DetailPlannerViewDataSource, DetailPlannerViewEventSource {}

final class DetailPlannerViewModel: BaseViewModel<DetailPlannerRouter>, DetailPlannerViewProtocol {
    
}
