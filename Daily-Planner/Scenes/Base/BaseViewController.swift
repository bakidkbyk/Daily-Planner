//
//  BaseViewController.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import UIKit

class BaseViewController<V: BaseViewModeProtocol>: UIViewController {
    
    var viewModel: V
    
    init(viewModel: V) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
