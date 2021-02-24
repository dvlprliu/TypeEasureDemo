//
//  AnyConfigurable.swift
//  TypeEasureDemo
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation

class AnyConfigurable: Configurable {
    let config: (Any) -> Void
    
    init<C: Configurable>(_ configurable: C) {
        self.config = { model in
            guard let viewModel = model as? C.ViewModel else {
                return
            }
            configurable.config(with: viewModel)
        }
    }
    
    func config(with viewModel: Any) {
        config(viewModel)
    }
}
