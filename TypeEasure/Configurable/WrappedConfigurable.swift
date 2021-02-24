//
//  WrappedConfigurable.swift
//  TypeEasureDemo
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation

public class WrappedConfigurable<ViewModel>: Configurable {
    let config: (ViewModel) -> Void
    
    public init<C: Configurable>(_ config: C) where C.ViewModel == ViewModel {
        self.config = config.config
    }
    
    public func config(with viewModel: ViewModel) {
        self.config(viewModel)
    }
}
