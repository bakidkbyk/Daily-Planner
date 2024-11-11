//
//  DetailPlannerViewController.swift
//  Daily-Planner
//
//  Created by Baki Dikbıyık on 18.10.2024.
//

import UIKit
import UIComponents
import MobilliumBuilders
import TinyConstraints

final class DetailPlannerViewController: BaseViewController<DetailPlannerViewModel> {
    
    private let bodystackview = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(20)
        .build()
        
    private let titleLabel = UILabelBuilder()
        .textColor(.white)
        .font(.font(.nunitoSemiBold, size: .xxLarge))
        .build()
    
    private let plannerNameLabel = UILabelBuilder()
        .textColor(.white)
        .font(.font(.nunitoBold, size: .xLarge))
        .build()
    
    private let plannerNameTextView = UITextViewBuilder()
        .cornerRadius(20)
        .font(.font(.nunitoBold, size: .xLarge))
        .textColor(.white)
        .isScrollEnabled(false)
        .textContainerInset(.init(top: 5, left: 5, bottom: 5, right: 5))
        .build()
    
    private let descriptionTextLabel  = UILabelBuilder()
        .textColor(.white)
        .font(.font(.nunitoBold, size: .xLarge))
        .build()
    
    private let descriptionTextView = UITextViewBuilder()
        .cornerRadius(20)
        .font(.font(.nunitoBold, size: .xLarge))
        .textColor(.white)
        .isScrollEnabled(false)
        .textContainerInset(.init(top: 5, left: 5, bottom: 5, right: 5))
        .build()
    
    private let dayTextLabel  = UILabelBuilder()
        .textColor(.white)
        .font(.font(.nunitoBold, size: .xLarge))
        .build()
    
    private let dayTextView = UITextViewBuilder()
        .cornerRadius(20)
        .font(.font(.nunitoBold, size: .xLarge))
        .textColor(.white)
        .isScrollEnabled(false)
        .textContainerInset(.init(top: 5, left: 5, bottom: 5, right: 5))
        .build()
    
    private let hourTextLabel  = UILabelBuilder()
        .textColor(.white)
        .font(.font(.nunitoBold, size: .xLarge))
        .build()
    
    private let hourtextView = UITextViewBuilder()
        .cornerRadius(20)
        .font(.font(.nunitoBold, size: .xLarge))
        .textColor(.white)
        .isScrollEnabled(false)
        .textContainerInset(.init(top: 5, left: 5, bottom: 5, right: 5))
        .build()
    
    private let buttonStackView = UIStackViewBuilder()
        .axis(.horizontal)
        .spacing(10)
        .alignment(.center)
        .build()
    
    private let cancelButton = ButtonFactory.createPrimaryButton(style: .medium)
    
    private let actionButton = ButtonFactory.createPrimaryButton(style: .medium)
    
    private let datePicker = UIDatePicker()
    private let timePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureContents()
        setLocalize()
        createDatePicker()
        createTimePicker()
    }
}

// MARK: - UILayout
extension DetailPlannerViewController {
    
    private func addSubviews() {
        
        view.addSubview(titleLabel)
        titleLabel.topToSuperview(usingSafeArea: true).constant = 20
        titleLabel.centerXToSuperview()
        
        view.addSubview(bodystackview)
        
        bodystackview.edgesToSuperview(excluding: [.bottom, .top], insets: .init(top: 0, left: 20, bottom: 0, right: 20))
        bodystackview.topToBottom(of: titleLabel).constant = 30
        
        bodystackview.addArrangedSubview(plannerNameLabel)
        bodystackview.setCustomSpacing(5, after: plannerNameLabel)
        bodystackview.addArrangedSubview(plannerNameTextView)
        
        bodystackview.addArrangedSubview(descriptionTextLabel)
        bodystackview.setCustomSpacing(5, after: descriptionTextLabel)
        bodystackview.addArrangedSubview(descriptionTextView)
        
        bodystackview.addArrangedSubview(dayTextLabel)
        bodystackview.setCustomSpacing(5, after: dayTextLabel)
        bodystackview.addArrangedSubview(dayTextView)
        
        bodystackview.addArrangedSubview(hourTextLabel)
        bodystackview.setCustomSpacing(5, after: hourTextLabel)
        bodystackview.addArrangedSubview(hourtextView)
        
        view.addSubview(buttonStackView)
        
        buttonStackView.topToBottom(of: bodystackview).constant = 15
        buttonStackView.centerXToSuperview()
        
        buttonStackView.addArrangedSubview(cancelButton)
        cancelButton.width(70)
        
        buttonStackView.addArrangedSubview(actionButton)
        actionButton.width(70)

        
    }
}

// MARK: - Configure And Localize
extension DetailPlannerViewController {
    
    private func configureContents() {
        view.backgroundColor = .plannerBackgroundColor
        
        plannerNameTextView.backgroundColor = .gray
        plannerNameTextView.height(60)
        plannerNameTextView.autocapitalizationType = .none
        plannerNameTextView.autocorrectionType = .no
        
        descriptionTextView.backgroundColor = .gray
        descriptionTextView.height(80)
        plannerNameTextView.autocapitalizationType = .none
        plannerNameTextView.autocorrectionType = .no
        
        dayTextView.backgroundColor = .gray
        dayTextView.height(30)
        dayTextView.autocapitalizationType = .none
        dayTextView.autocorrectionType = .no
        
        hourtextView.backgroundColor = .gray
        hourtextView.height(30)
        hourtextView.autocapitalizationType = .none
        hourtextView.autocorrectionType = .no
        
        cancelButton.setTitle(L10n.DetailPlanner.cancelButtontext, for: .normal)
        actionButton.setTitle(L10n.DetailPlanner.actionButtonText, for: .normal)
    }
    
    private func setLocalize() {
        titleLabel.text = L10n.DetailPlanner.plannerDetailTitleLabel
        plannerNameLabel.text = L10n.DetailPlanner.plannerNameLabel
        descriptionTextLabel.text = L10n.DetailPlanner.descriptionLabel
        dayTextLabel.text = L10n.DetailPlanner.dayLabel
        hourTextLabel.text = L10n.DetailPlanner.hourLabel
    }
    
    private func createDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        dayTextView.inputView = datePicker
        dayTextView.inputAccessoryView = createDateToolBar()
    }
    
    private func createTimePicker() {
        timePicker.preferredDatePickerStyle = .wheels
        timePicker.datePickerMode = .time
        hourtextView.inputView = timePicker
        hourtextView.inputAccessoryView = createTimeToolBar()
    }
    
    private func createDateToolBar() -> UIToolbar {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(dateDoneButtonPressed))
        toolBar.setItems([doneButton], animated: true)
        
        return toolBar
    }
    
    private func createTimeToolBar() -> UIToolbar {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(timeDoneButtonPressed))
        toolBar.setItems([doneButton], animated: true)
        
        return toolBar
    }
    
}

// MARK: - Actions
extension DetailPlannerViewController {
    
    @objc
    func dateDoneButtonPressed() {
        self.view.endEditing(true)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dayTextView.text = dateFormatter.string(from: datePicker.date)
    }
    
    @objc
    func timeDoneButtonPressed() {
        self.view.endEditing(true)
        let dateFormatter = DateFormatter()
        //dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        hourtextView.text = dateFormatter.string(from: timePicker.date)
    }

}

