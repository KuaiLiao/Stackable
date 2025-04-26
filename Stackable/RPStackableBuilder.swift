//
//  RPStackableBuilder.swift
//  Pods
//
//  Created by Zero.D.Saber on 2025/4/26.
//

@resultBuilder
public struct RPStackableBuilder {
    public typealias V = any Stackable
    
    public static func buildBlock(_ components: [V]...) -> [V] {
        components.flatMap { $0 }
    }

    public static func buildArray(_ components: [[V]]) -> [V] {
        components.flatMap { $0 }
    }

    public static func buildOptional(_ component: [V]?) -> [V] {
        guard let component = component else {
            return []
        }
        return component
    }

    public static func buildEither(first component: [V]) -> [V] {
        component
    }

    public static func buildEither(second component: [V]) -> [V] {
        component
    }

    public static func buildExpression(_ expression: V) -> [V] {
        [expression]
    }

    public static func buildExpression(_ expression: V?) -> [V] {
        guard let expression = expression else {
            return []
        }
        return [expression]
    }

    public static func buildLimitedAvailability(_ component: [V]) -> [V] {
        component
    }
}
