//
//  UIStackView+Modifier.swift
//  Pods
//
//  Created by Zero.D.Saber on 2025/11/30.
//

import UIKit

public protocol StackModifier {
    associatedtype Stack: UIStackView
    
    func axis(_ axis: NSLayoutConstraint.Axis) -> Stack
    func distribution(_ distribution: Stack.Distribution) -> Stack
    func alignment(_ alignment: Stack.Alignment) -> Stack
    func spacing(_ spacing: CGFloat) -> Stack
}

extension UIStackView: StackModifier {
    public func axis(_ axis: NSLayoutConstraint.Axis) -> UIStackView {
        self.axis = axis
        return self
    }
    
    public func distribution(_ distribution: UIStackView.Distribution) -> UIStackView {
        self.distribution = distribution
        return self
    }
    
    public func alignment(_ alignment: UIStackView.Alignment) -> UIStackView {
        self.alignment = alignment
        return self
    }
    
    public func spacing(_ spacing: CGFloat) -> UIStackView {
        self.spacing = spacing
        return self
    }
}
