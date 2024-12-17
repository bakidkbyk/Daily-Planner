//
//  PlannerCell.swift
//  UIComponents
//
//  Created by Baki Dikbıyık on 14.11.2024.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

public class PlannerCell: UICollectionViewCell, ReusableView {
    
    private let imageView = UIImageViewBuilder()
        .contentMode(.scaleToFill)
        .clipsToBounds(true)
        .cornerRadius(10)
        .build()
    
    private let bodystackView = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(5)
        .build()
    
    private let plannerNameLabel = UILabelBuilder()
        .font(.font(.nunitoBold, size: .medium))
        .textColor(.blue)
        .build()
    
    private let calenderImageView = UIImageViewBuilder()
        .contentMode(.scaleToFill)
        .clipsToBounds(true)
        .cornerRadius(10)
        .build()
    
    private let dayLabel = UILabelBuilder()
        .font(.font(.nunitoBold, size: .medium))
        .textColor(.blue)
        .build()
    
    weak var viewModel: PlannerCellProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureContents()
    }
    
    private func configureContents() {
        
    }
    
    public func set(viewModel: PlannerCellProtocol) {
        self.viewModel = viewModel
        
    }
    
}
