//
//  HomeViewModel.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 11.11.2024.
//

import Foundation

protocol HomeViewDataSource {}

protocol HomeViewEventSource {}

protocol HomeViewProtocol: HomeViewDataSource, HomeViewEventSource {}

final class HomeViewModel: BaseViewModel<HomeRouter>, HomeViewProtocol {
    
}
