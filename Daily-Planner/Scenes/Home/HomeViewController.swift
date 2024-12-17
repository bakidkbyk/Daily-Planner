//
//  HomeViewController.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 11.11.2024.
//

import UIKit
import UIComponents
import MobilliumBuilders
import TinyConstraints

final class HomeViewController: BaseViewController<HomeViewModel> {
    
    private let addButton = ButtonFactory.createPrimaryButton(style: .medium)
    
    
    private let bodystackview = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(20)
        .build()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureContents()
    }
    
}

// MARK: - UILayout
extension HomeViewController {
    
}

// MARK: - Configure And Localize
extension HomeViewController {
    
    private func configureContents() {
        view.backgroundColor = .plannerBackgroundColor
        
        let rightBarButton = UIBarButtonItem(customView: addButton)
        navigationItem.rightBarButtonItem = rightBarButton
        addButton.setImage(.init(systemName: "plus.circle.fill"), for: .normal)
        addButton.backgroundColor = nil
    }
}
