//
//  UIView+Modifier.swift
//  Pods
//
//  Created by Zero.D.Saber on 2025/11/30.
//

import UIKit

public extension StackableExtension where ExtendedType: UIStackView {
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        base.axis = axis
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        base.distribution = distribution
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        base.alignment = alignment
        return self
    }
    
    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        base.spacing = spacing
        return self
    }
}

public extension StackableExtension where ExtendedType: UIView {
    @discardableResult
    func width(_ w: CGFloat) -> Self {
        base.translatesAutoresizingMaskIntoConstraints = false
        base.widthAnchor.constraint(equalToConstant: w).isActive = true
        return self
    }
    
    @discardableResult
    func height(_ w: CGFloat) -> Self {
        base.translatesAutoresizingMaskIntoConstraints = false
        base.heightAnchor.constraint(equalToConstant: w).isActive = true
        return self
    }
    
    @discardableResult
    func width(_ w: CGFloat) -> ExtendedType {
        let _: StackableExtension = width(w)
        return base
    }
    
    @discardableResult
    func height(_ w: CGFloat) -> ExtendedType {
        let _: StackableExtension = height(w)
        return base
    }
    
    @discardableResult
    func size(_ s: CGSize) -> Self {
        let _: StackableExtension = width(s.width)
        let _: StackableExtension = height(s.height)
        return self
    }
    
    @discardableResult
    func size(_ s: CGSize) -> ExtendedType {
        let _: StackableExtension = size(s)
        return base
    }
    
    @discardableResult
    func size(_ wh: CGFloat) -> Self {
        let _: StackableExtension = width(wh)
        let _: StackableExtension = height(wh)
        return self
    }
    
    @discardableResult
    func size(_ wh: CGFloat) -> ExtendedType {
        let _: StackableExtension = size(wh)
        return base
    }
}
