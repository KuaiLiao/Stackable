//
//  StackUI.swift
//  Pods
//
//  Created by Zero_D_Saber on 2025/12/1.
//

import UIKit

@MainActor
public struct StackUI {
    
    @discardableResult
    public static func VStack(
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
    public static func HStack(
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
    
    #if false
    @discardableResult
    public static func ZStack(
        axis: NSLayoutConstraint.Axis = .vertical,
        @RPStackableBuilder _ stackablesBlock: () -> [UIView]
    ) -> UIView {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        stackablesBlock().forEach { x in
            container.addSubview(x)
        }
        return container
    }
    #endif
    
    @discardableResult
    public static func Spacer(
        minWidth: CGFloat? = nil,
        minHeight: CGFloat? = nil,
    ) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        
        // Low hugging priority to allow expansion
        view.setContentHuggingPriority(.defaultLow, for: .horizontal)
        view.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        if let minWidth, minWidth > 0.0 {
            view.widthAnchor.constraint(greaterThanOrEqualToConstant: minWidth).isActive = true
        }
        if let minHeight, minHeight > 0.0 {
            view.heightAnchor.constraint(greaterThanOrEqualToConstant: minHeight).isActive = true
        }
        
        return view
    }
    
}
