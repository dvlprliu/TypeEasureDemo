//
//  TagsView.swift
//  TypeEasureDemo
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation

public class TagsView: View, Configurable {
    public func config(with viewModel: TagsViewModel) {
        viewModel.foo()
    }
}
