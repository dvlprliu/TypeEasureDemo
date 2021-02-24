//
//  KeywordView.swift
//  TypeEasureDemo
//
//  Created by Liu,Zhuangzhuang on 2021/2/23.
//

import Foundation

public class KeywordView: View, Configurable {
    public func config(with viewModel: KeywordViewModel) {
        viewModel.bar()
    }
}
