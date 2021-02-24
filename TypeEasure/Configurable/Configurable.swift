//
//  Configurable.swift
//  TypeEasureDemo
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation

public protocol ShadowConfigurable {
    func config(with model: Any)
}

public protocol Configurable: ShadowConfigurable {
    associatedtype ViewModel
    func config(with viewModel: ViewModel)
}

public extension ShadowConfigurable where Self: Configurable {
    func config(with model: Any) {
        guard let viewModel = model as? ViewModel else {
            assert(false, "wrong type, expecting \(ViewModel.self) receive: \(model)")
            return
        }
        config(with: viewModel)
    }
}

