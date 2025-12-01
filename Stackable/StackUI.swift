//
//  StackUI.swift
//  Pods
//
//  Created by Zero_D_Saber on 2025/12/1.
//

import UIKit

@discardableResult
public func VStack(
    distribution: UIStackView.Distribution = .fill,
    alignment: UIStackView.Alignment = .fill,
    spacing: CGFloat = 0,
    @RPStackableBuilder _ stackablesBlock: () -> [any Stackable]
) -> UIStackView {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = distribution
    stackView.alignment = alignment
    stackView.spacing = spacing
    
    stackView.stackable.add(stackablesBlock())
    
    return stackView
}

@discardableResult
public func HStack(
    distribution: UIStackView.Distribution = .fill,
    alignment: UIStackView.Alignment = .fill,
    spacing: CGFloat = 0,
    @RPStackableBuilder _ stackablesBlock: () -> [any Stackable]
) -> UIStackView {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.distribution = distribution
    stackView.alignment = alignment
    stackView.spacing = spacing
    
    stackView.stackable.add(stackablesBlock())
    
    return stackView
}

@discardableResult
public func Spacer(
    minLength: CGFloat? = nil
) -> UIView {
    let view = UIView()
    view.backgroundColor = .clear
    
    // Low hugging priority to allow expansion
    view.setContentHuggingPriority(.defaultLow, for: .horizontal)
    view.setContentHuggingPriority(.defaultLow, for: .vertical)
    
    view.translatesAutoresizingMaskIntoConstraints = false
    
    if let minLength {
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(greaterThanOrEqualToConstant: minLength),
            view.heightAnchor.constraint(greaterThanOrEqualToConstant: minLength),
        ])
    }
    
    return view
}
